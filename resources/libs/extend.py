from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from appium.webdriver.common.touch_action import TouchAction

# Criando um Metodo para utilizar no drag and drop


@keyword(name='Drags And Drop')
def drag_drop(element_id, p_origin, p_target):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    ele_origin = driver.find_element_by_id(element_id)[int(p_origin)]
    ele_target = driver.find_element_by_id(element_id)[int(p_target)]

    actions = TouchAction(driver)
    actions.long_press(ele_origin).move_to(ele_target)
    actions.release()
    actions.perform()
