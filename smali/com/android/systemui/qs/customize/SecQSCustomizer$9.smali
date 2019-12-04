.class Lcom/android/systemui/qs/customize/SecQSCustomizer$9;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;->setupPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$9;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mResetButton.onClick() : mCustomizing  = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$9;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecQSCustomizer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$9;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 466
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$9;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$9;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 467
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$9;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2400(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    :cond_1
    return-void
.end method
