.class Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "AppDockGridViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/view/AppDockGridViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppDockGridAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/appdock/view/AppDockGridViewPager;Landroid/content/Context;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    .line 154
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;->mContext:Landroid/content/Context;

    const-string p1, "layout_inflater"

    .line 156
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p3, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    .line 182
    invoke-virtual {p3}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->unbind()V

    .line 183
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-static {p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->access$300(Lcom/android/systemui/appdock/view/AppDockGridViewPager;)I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-static {v0, p2}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->access$000(Lcom/android/systemui/appdock/view/AppDockGridViewPager;I)I

    move-result p2

    .line 165
    :cond_0
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->getTime()I

    move-result v0

    .line 166
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->appdock_grid_viewpager_item_view:I

    const/4 v3, 0x0

    .line 167
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/view/AppDockItemGridView;

    .line 168
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 169
    iget-object v4, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-static {v4}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->access$100(Lcom/android/systemui/appdock/view/AppDockGridViewPager;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 170
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x3

    .line 172
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 173
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-static {p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->access$200(Lcom/android/systemui/appdock/view/AppDockGridViewPager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->bind(Ljava/util/List;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 174
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->getTime()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string/jumbo p1, "time=%d"

    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
