.class Lcom/android/systemui/qs/QSDetail$6$4;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$6;->onScrollToDetail(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$6;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$6;II)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$6$4;->this$1:Lcom/android/systemui/qs/QSDetail$6;

    iput p2, p0, Lcom/android/systemui/qs/QSDetail$6$4;->val$x:I

    iput p3, p0, Lcom/android/systemui/qs/QSDetail$6$4;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$6$4;->this$1:Lcom/android/systemui/qs/QSDetail$6;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget v1, p0, Lcom/android/systemui/qs/QSDetail$6$4;->val$x:I

    iget p0, p0, Lcom/android/systemui/qs/QSDetail$6$4;->val$y:I

    invoke-static {v0, v1, p0}, Lcom/android/systemui/qs/QSDetail;->access$500(Lcom/android/systemui/qs/QSDetail;II)V

    return-void
.end method
