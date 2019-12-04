.class Lcom/android/systemui/qs/SecQSLayoutDetail$6;
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

    .line 190
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$6;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 193
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    .line 194
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$6;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$500(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V

    return-void
.end method
