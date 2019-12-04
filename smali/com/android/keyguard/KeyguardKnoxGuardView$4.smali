.class Lcom/android/keyguard/KeyguardKnoxGuardView$4;
.super Landroid/database/ContentObserver;
.source "KeyguardKnoxGuardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardKnoxGuardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Landroid/os/Handler;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 161
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "mobile_data"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 162
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobileData settings changed mMobileDataSettingEnabled "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyguardKnoxGuardView"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->kg_knox_guard_mobile_data_turned_on_toast:I

    invoke-static {p1, v1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 165
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$400(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUIButton;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    goto :goto_1

    .line 167
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$400(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUIButton;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :goto_1
    return-void
.end method
