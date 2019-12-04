.class Lcom/android/systemui/qs/customize/TileAdapter$6$1;
.super Ljava/lang/Object;
.source "TileAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileAdapter$6;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/customize/TileAdapter$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter$6;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6$1;->this$1:Lcom/android/systemui/qs/customize/TileAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 592
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6$1;->this$1:Lcom/android/systemui/qs/customize/TileAdapter$6;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
