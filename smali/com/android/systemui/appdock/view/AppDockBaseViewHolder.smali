.class public abstract Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppDockBaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$DummyDropTargetViewHolder;,
        Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$AppDockHeaderViewHolder;,
        Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$AppDockDividerViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract onBind(Lcom/android/systemui/appdock/model/AppDockItemInfo;)V
    .param p1    # Lcom/android/systemui/appdock/model/AppDockItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onUnbind()V
.end method

.method public abstract updateView()V
.end method
