.class Lcom/android/systemui/qs/QSDetail$6$5;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$6;->onUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$6;

.field final synthetic val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$6;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$6$5;->this$1:Lcom/android/systemui/qs/QSDetail$6;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$6$5;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$6$5;->this$1:Lcom/android/systemui/qs/QSDetail$6;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$6$5;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-static {v0, p0}, Lcom/android/systemui/qs/QSDetail;->access$600(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void
.end method
