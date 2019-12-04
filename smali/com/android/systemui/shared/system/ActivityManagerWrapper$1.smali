.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "ActivityManagerWrapper.java"


# instance fields
.field final synthetic val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/AssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/AssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V

    return-void
.end method
