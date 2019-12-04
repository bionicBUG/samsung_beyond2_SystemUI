.class Lcom/android/systemui/qs/customize/SecQSCustomizer$8;
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

    .line 446
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "done onClick   mCustomizing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecQSCustomizer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 450
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    .line 453
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "3001"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
