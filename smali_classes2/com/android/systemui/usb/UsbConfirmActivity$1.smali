.class Lcom/android/systemui/usb/UsbConfirmActivity$1;
.super Ljava/lang/Object;
.source "UsbConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbConfirmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbConfirmActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity$1;->this$0:Lcom/android/systemui/usb/UsbConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/usb/UsbConfirmActivity$1;->this$0:Lcom/android/systemui/usb/UsbConfirmActivity;

    invoke-static {p0}, Lcom/android/systemui/usb/UsbConfirmActivity;->access$000(Lcom/android/systemui/usb/UsbConfirmActivity;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
