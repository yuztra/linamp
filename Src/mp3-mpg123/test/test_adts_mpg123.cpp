#include "catch.hpp"
#include "adts_mpg123.h"

class MemoryStreamer : public ifc_mpeg_stream_reader
{
public:
	MemoryStreamer(){}
	int Peek(void *buffer, size_t to_read, size_t *bytes_read)
	{
		if (to_read > this->bufferBytes) {
			to_read = this->bufferBytes;
		}
		memcpy(buffer, this->buffer, to_read);
		*bytes_read =  to_read;
		return adts::SUCCESS;
	}

	int Read(void *buffer, size_t to_read, size_t *bytes_read)
	{
		if (to_read > this->bufferBytes) {
			to_read = this->bufferBytes;
		}
		memcpy(buffer, this->buffer, to_read);
		this->buffer = (unsigned char *)this->buffer + *bytes_read;
		*bytes_read =  to_read;
		bufferBytes -= to_read;
		return adts::SUCCESS;
	}

	int EndOf()
	{
		if (bufferBytes == 0) {
			return 1;
	} else {
			return 0;
	}
	}
	float GetGain()
	{
		return 1.0;
	}
	unsigned char *buffer;
	size_t bufferBytes;
	RECVS_DISPATCH;
};

#define CBCLASS MemoryStreamer
START_DISPATCH;
CB(MPEGSTREAM_PEEK, Peek)
CB(MPEGSTREAM_READ, Read)
CB(MPEGSTREAM_EOF, EndOf)
CB(MPEGSTREAM_GAIN, GetGain)
END_DISPATCH;
#undef CBCLASS

static const unsigned char mp3_frame1[] =  {
	0xFF, 0xF3, 0x70, 0x54, 0x00, 0x10, 0x2D, 0xFA, 0x96, 0x0F, 0xA0, 0x20,
	0x00, 0x81, 0xE8, 0x05, 0x2C, 0x1F, 0x40, 0x00, 0x00, 0x03, 0x51, 0xB6,
	0x1B, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF3,
	0x0B, 0x05, 0x86, 0x07, 0x60, 0x2E, 0x11, 0x94, 0x0A, 0x01, 0x61, 0xA0,
	0xD0, 0xC2, 0xC5, 0xCF, 0x81, 0x41, 0x43, 0x2F, 0x44, 0x4E, 0x6E, 0x1F,
	0xFF, 0xFF, 0xFF, 0xFF, 0xF2, 0x01, 0xA0, 0xA2, 0x8B, 0x87, 0xF6, 0x2E,
	0x7A, 0x0A, 0x19, 0x25, 0x9F, 0x02, 0xF6, 0x40, 0xA1, 0x92, 0x2E, 0x2E,
	0x7F, 0xEE, 0xFF, 0x96, 0x1E, 0x0E, 0x2C, 0x1B, 0x87, 0xEC, 0x1C, 0x07,
	0x8A, 0x1C, 0x18, 0x58, 0x76, 0x7C, 0x0A, 0x07, 0x86, 0x5E, 0x88, 0x94,
	0xEF, 0x02, 0xF6, 0x82, 0x86, 0x49, 0x67, 0xC0, 0xBD, 0x90, 0x28, 0x64,
	0x8B, 0x8B, 0xDF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xBC,
	0x3D, 0xA0, 0xA2, 0x4B, 0x8B, 0x8B, 0x8A, 0x51, 0x60, 0xDC, 0x5D, 0x85,
	0x03, 0xC3, 0x2C, 0x00, 0x03, 0x31, 0xE0, 0x00, 0x7F};
TEST_CASE("", "[adts_mpg123]") {

	mpg123_init();
	ADTS_MPG123 mp3;
	MemoryStreamer memoryStreamer;
	REQUIRE(mp3.Initialize(false, false, false, 16, true, true, true) == adts::SUCCESS);
	REQUIRE(mp3.Open(&memoryStreamer) == true);
	size_t numBits;
	size_t numChannels;
	int sampleRate;
	memoryStreamer.buffer = (unsigned char *)mp3_frame1;
	memoryStreamer.bufferBytes = sizeof(mp3_frame1);
	size_t outputWritten=777;
	size_t bitrate=777;
	REQUIRE(mp3.Sync(&memoryStreamer, 0, 0, &outputWritten, &bitrate) == adts::SUCCESS);
	REQUIRE(bitrate == 64);
	REQUIRE(outputWritten == 0);

}