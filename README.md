BeautyGallery
=============

Beauty Gallery is an iOS App written in Swift. This app is used for an online video training course. This app demonstrates how to use storyboards and segues, Navigation Controller, Social Framework, Tab Bar Controller and Auto Layout.

## Screenshots
![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/1.png)

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/2.png)

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/3.png)


## 中文描述
Beauty Gallery是一个使用Swift语言开发的iOS App，这是免费在线视频课程 女神画廊 app）的源代码，在这个app中，我演示了如何使用Storyboards和Segues, Navigation Controller, Social Framework, Tab Bar Controller以及Auto Layout。

### Storyboards和Segues  - 女神画廊 app

*最终截图*

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/1.png)

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/2.png)

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/3.png)

*最终源码*

[Storyboards和Segues课程源码](https://github.com/JakeLin/BeautyGallery/archive/V1.zip)


### Navigation Controller  - 女神画廊 app
*课程开始源码*

如果没有学习前面的课程，可以下载下面的源码开始学习。
[课程开始源码](https://github.com/JakeLin/BeautyGallery/archive/V1.zip)
**请注意**，由于Apple不断的修改Swift的编译器，这里需要进行小量修改使得代码可以通过Xcode 6 GM版本的编译。在 Auto Layout - 女神画廊 app 视频中讲述到如何修改这些代码，也可以参考下面的方法进行修改。

_在ViewControllerExtension.swift文件_

```
extension ViewController: UIPickerViewDataSource {
    // two required methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String! {
        return beauties[row]
    }
}
```

删除`UIPickerView`后的三个感叹号，修改为

```
extension ViewController: UIPickerViewDataSource {
    // two required methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return beauties[row]
    }
}
```

_在ViewController.swift文件_

```
override func prepareForSegue(segue:
        UIStoryboardSegue!, sender: AnyObject!) {
            if segue.identifier == "GoToGallery" {
                let index = beautyPicker.selectedRowInComponent(0)
                
                var vc = segue.destinationViewController as GalleryViewController
                switch index {
                case 0:
                    vc.imageName = "fanbingbing"
                case 1:
                    vc.imageName = "libingbing"
                case 2:
                    vc.imageName = "wangfei"
                case 3:
                    vc.imageName = "yangmi"
                case 4:
                    vc.imageName = "zhouxun"
                default:
                    vc.imageName = nil
                }
            }
    }
```

删除`UIStoryboardSegue`后的感叹号，修改为

```
override func prepareForSegue(segue:
        UIStoryboardSegue, sender: AnyObject!) {
            if segue.identifier == "GoToGallery" {
                let index = beautyPicker.selectedRowInComponent(0)
                
                var vc = segue.destinationViewController as GalleryViewController
                switch index {
                case 0:
                    vc.imageName = "fanbingbing"
                case 1:
                    vc.imageName = "libingbing"
                case 2:
                    vc.imageName = "wangfei"
                case 3:
                    vc.imageName = "yangmi"
                case 4:
                    vc.imageName = "zhouxun"
                default:
                    vc.imageName = nil
                }
            }
    }
```


*最终截图*

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/4.png)

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/5.png)


*最终源码*

[Navigation Controller课程源码](https://github.com/JakeLin/BeautyGallery/archive/V2.zip)

### Tab Bar Controller  - 女神画廊 app
*课程开始源码*

如果没有学习前面的课程，可以下载下面的源码开始学习。
[课程开始源码](https://github.com/JakeLin/BeautyGallery/archive/V2.zip)
**请注意**，由于Apple不断的修改Swift的编译器，这里需要进行小量修改使得代码可以通过Xcode 6 GM版本的编译。在 Auto Layout - 女神画廊 app 视频中讲述到如何修改这些代码，也可以参考下面的方法进行修改。

_在ViewControllerExtension.swift文件_

```
extension ViewController: UIPickerViewDataSource {
    // two required methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String! {
        return beauties[row]
    }
}
```

删除`UIPickerView`后的三个感叹号，修改为

```
extension ViewController: UIPickerViewDataSource {
    // two required methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return beauties[row]
    }
}
```

_在ViewController.swift文件_

```
override func prepareForSegue(segue:
        UIStoryboardSegue!, sender: AnyObject!) {
            if segue.identifier == "GoToGallery" {
                let index = beautyPicker.selectedRowInComponent(0)
                
                var vc = segue.destinationViewController as GalleryViewController
                switch index {
                case 0:
                    vc.imageName = "fanbingbing"
                case 1:
                    vc.imageName = "libingbing"
                case 2:
                    vc.imageName = "wangfei"
                case 3:
                    vc.imageName = "yangmi"
                case 4:
                    vc.imageName = "zhouxun"
                default:
                    vc.imageName = nil
                }
            }
    }
```

删除`UIStoryboardSegue`后的感叹号，修改为

```
override func prepareForSegue(segue:
        UIStoryboardSegue, sender: AnyObject!) {
            if segue.identifier == "GoToGallery" {
                let index = beautyPicker.selectedRowInComponent(0)
                
                var vc = segue.destinationViewController as GalleryViewController
                switch index {
                case 0:
                    vc.imageName = "fanbingbing"
                case 1:
                    vc.imageName = "libingbing"
                case 2:
                    vc.imageName = "wangfei"
                case 3:
                    vc.imageName = "yangmi"
                case 4:
                    vc.imageName = "zhouxun"
                default:
                    vc.imageName = nil
                }
            }
    }
```

*最终截图*

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/6.png)

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/7.png)

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/8.png)

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/9.png)

*最终源码*

[Tab Bar Controller课程源码](https://github.com/JakeLin/BeautyGallery/archive/V3.zip)


### Auto Layout - 女神画廊 app
*课程开始源码*

如果没有学习前面的课程，可以下载下面的源码开始学习。
[课程开始源码](https://github.com/JakeLin/BeautyGallery/archive/V3.zip)
**请注意**，由于Apple不断的修改Swift的编译器，这里需要进行小量修改使得代码可以通过Xcode 6 GM版本的编译。在 Auto Layout - 女神画廊 app 视频中讲述到如何修改这些代码，也可以参考下面的方法进行修改。

_在ViewControllerExtension.swift文件_

```
extension ViewController: UIPickerViewDataSource {
    // two required methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String! {
        return beauties[row]
    }
}
```

删除`UIPickerView`后的三个感叹号，修改为

```
extension ViewController: UIPickerViewDataSource {
    // two required methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return beauties[row]
    }
}
```

_在ViewController.swift文件_

```
override func prepareForSegue(segue:
        UIStoryboardSegue!, sender: AnyObject!) {
            if segue.identifier == "GoToGallery" {
                let index = beautyPicker.selectedRowInComponent(0)
                
                var vc = segue.destinationViewController as GalleryViewController
                switch index {
                case 0:
                    vc.imageName = "fanbingbing"
                case 1:
                    vc.imageName = "libingbing"
                case 2:
                    vc.imageName = "wangfei"
                case 3:
                    vc.imageName = "yangmi"
                case 4:
                    vc.imageName = "zhouxun"
                default:
                    vc.imageName = nil
                }
            }
    }
```

删除`UIStoryboardSegue`后的感叹号，修改为

```
override func prepareForSegue(segue:
        UIStoryboardSegue, sender: AnyObject!) {
            if segue.identifier == "GoToGallery" {
                let index = beautyPicker.selectedRowInComponent(0)
                
                var vc = segue.destinationViewController as GalleryViewController
                switch index {
                case 0:
                    vc.imageName = "fanbingbing"
                case 1:
                    vc.imageName = "libingbing"
                case 2:
                    vc.imageName = "wangfei"
                case 3:
                    vc.imageName = "yangmi"
                case 4:
                    vc.imageName = "zhouxun"
                default:
                    vc.imageName = nil
                }
            }
    }
```

*最终截图*

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/10.png)

![BeautyGallery](https://github.com/JakeLin/BeautyGallery/blob/master/Screenshots/11.png)

*最终源码*

[Auto Layout课程源码](https://github.com/JakeLin/BeautyGallery/archive/V4.zip)
