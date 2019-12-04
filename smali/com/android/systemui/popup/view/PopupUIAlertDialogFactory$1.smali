.class Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;
.super Ljava/lang/Object;
.source "PopupUIAlertDialogFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;->this$0:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;->this$0:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-static {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->access$000(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method
