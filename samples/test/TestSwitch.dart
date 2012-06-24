//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Fri, May 25, 2012  5:00:33 PM
// Author: tomyeh

#import('../../client/app/app.dart');
#import('../../client/view/view.dart');
#import('../../client/model/model.dart');
#import('../../client/event/event.dart');
#import('../../client/util/util.dart');

class TestSwitch extends Activity {

  void onCreate_() {
    mainView.layout.text = "type: linear; orient: vertical";

    mainView.addChild(createSwitch(true));
    mainView.addChild(createSwitch(false));
    mainView.addChild(createSwitch(true, "Yes", "No"));
    mainView.addChild(createSwitch(false, "True", "False"));
  }
  Switch createSwitch(bool value, [String onLabel, String offLabel]) {
    Switch view = new Switch(value, onLabel, offLabel);
    view.on.change.add((event){
      log("Switch${view.uuid}: ${view.value}");
    });
    return view;
  }
}

void main() {
  new TestSwitch().run();
}
