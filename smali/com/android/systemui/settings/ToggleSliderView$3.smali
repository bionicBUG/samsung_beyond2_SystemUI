.class Lcom/android/systemui/settings/ToggleSliderView$3;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .line 281
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {p1}, Lcom/android/systemui/settings/ToggleSliderView;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$900(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1000(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 282
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1100(Lcom/android/systemui/settings/ToggleSliderView;)I

    move-result p1

    if-gt p1, p2, :cond_1

    .line 283
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "ToggleSlider"

    const-string p2, "hideMirror : EYE_STRAIN_DIALOG"

    .line 284
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 287
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$1300(Lcom/android/systemui/settings/ToggleSliderView;)V

    return-void

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1400(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1400(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 291
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1400(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 297
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 298
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 299
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->access$300(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v2

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$600(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    const/4 v5, 0x0

    move v4, p2

    .line 298
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 302
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/ToggleSliderView;->setBrightnessAnimationNumber(I)V

    .line 304
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 305
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1500(Lcom/android/systemui/settings/ToggleSliderView;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object p3, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p3}, Lcom/android/systemui/settings/ToggleSliderView;->access$1600(Lcom/android/systemui/settings/ToggleSliderView;)I

    move-result p3

    mul-int/2addr p1, p3

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 306
    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$1600(Lcom/android/systemui/settings/ToggleSliderView;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 307
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$1500(Lcom/android/systemui/settings/ToggleSliderView;)I

    move-result p0

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateBrightnessAnimation(IF)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartTrackingTouch()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$1000(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".mirror"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ToggleSlider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$302(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    .line 326
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 327
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 328
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocation(Landroid/view/View;)V

    .line 331
    :cond_1
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz p1, :cond_2

    .line 332
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$700(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {p1}, Lcom/android/systemui/settings/ToggleSliderView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 333
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$800(Lcom/android/systemui/settings/ToggleSliderView;I)V

    :cond_2
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$1000(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v1, p1

    const-string p1, "2026"

    .line 343
    invoke-static {v0, p1, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$302(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    .line 351
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1000(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1400(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1400(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1100(Lcom/android/systemui/settings/ToggleSliderView;)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    :goto_0
    move v4, p1

    .line 354
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 355
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->access$300(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v2

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$600(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 359
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 360
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 363
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStopTrackingTouch()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$1000(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, ".mirror"

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToggleSlider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
