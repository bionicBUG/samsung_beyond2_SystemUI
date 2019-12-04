.class Lcom/android/systemui/qs/SecQSLayoutDetail$3;
.super Ljava/lang/Object;
.source "SecQSLayoutDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/SecQSLayoutDetail;->setClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$3;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$3;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$200(Lcom/android/systemui/qs/SecQSLayoutDetail;)Lcom/android/systemui/qs/QSSwitch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$3;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$300(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V

    .line 165
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$3;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$200(Lcom/android/systemui/qs/SecQSLayoutDetail;)Lcom/android/systemui/qs/QSSwitch;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
