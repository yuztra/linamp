/* This file was generated by Maki Compiler, do not edit manually */

#ifndef __HOOK_TREEITEM_H
#define __HOOK_TREEITEM_H

#include "h_rootobj.h"

#define H_TREEITEM_PARENT H_RootObject

class H_TreeItem : public H_TREEITEM_PARENT {

public:

  H_TreeItem(ScriptObject *o);
  H_TreeItem();
  virtual ~H_TreeItem();
  virtual void H_hook(ScriptObject *o);
  ScriptObject *getHookedObject();

  virtual int eventCallback(ScriptObject *object, int dlfid, scriptVar **params, int nparams);
  virtual void hook_onTreeAdd() {  }
  virtual void hook_onTreeRemove() {  }
  virtual void hook_onSelect() {  }
  virtual void hook_onDeselect() {  }
  virtual void hook_onLeftDoubleClick() {  }
  virtual void hook_onRightDoubleClick() {  }
  virtual void hook_onChar(wchar_t key) {  }
  virtual void hook_onExpand() {  }
  virtual void hook_onCollapse() {  }
  virtual void hook_onBeginLabelEdit() {  }
  virtual void hook_onEndLabelEdit(const wchar_t *newlabel) {  }
  virtual void hook_onContextMenu(int x, int y) {  }

  private:

  ScriptObject *obj;
  int inited;
  static int loaded;
  static int ontreeadd_id;
  static int ontreeremove_id;
  static int onselect_id;
  static int ondeselect_id;
  static int onleftdoubleclick_id;
  static int onrightdoubleclick_id;
  static int onchar_id;
  static int onexpand_id;
  static int oncollapse_id;
  static int onbeginlabeledit_id;
  static int onendlabeledit_id;
  static int oncontextmenu_id;
};

#endif
