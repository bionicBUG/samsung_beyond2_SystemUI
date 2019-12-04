.class public Lcom/android/systemui/qs/tiles/UserDetailView;
.super Lcom/android/systemui/qs/PseudoGridView;
.source "UserDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x190


# instance fields
.field protected mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PseudoGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/tiles/UserDetailView;
    .locals 1

    .line 48
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->qs_user_detail:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/UserDetailView;

    return-object p0
.end method


# virtual methods
.method public createAndSetAdapter(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 2

    .line 53
    new-instance v0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    .line 54
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public refreshAdapter()V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->refresh()V

    return-void
.end method
