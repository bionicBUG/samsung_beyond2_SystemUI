.class final Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;
.super Ljava/lang/Object;
.source "NavigationBarTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NavigationBarTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NavigationBarDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile;Lcom/android/systemui/qs/tiles/NavigationBarTile$1;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/NavigationBarTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 329
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$300(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->qs_detail_navigation_bar:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 331
    sget p2, Lcom/android/systemui/R$id;->navigation_option_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    .line 332
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$400(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result p3

    .line 333
    invoke-static {}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$600(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullScreenGestureEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_1

    .line 335
    sget p3, Lcom/android/systemui/R$id;->screen_gesture:I

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 337
    :cond_1
    sget p3, Lcom/android/systemui/R$id;->navigation_button:I

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->check(I)V

    .line 340
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$700(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    move p3, v1

    goto :goto_1

    :cond_2
    move p3, v0

    .line 341
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$800(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v0

    .line 342
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$400(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    move-result v3

    .line 343
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$400(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result v4

    .line 344
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$400(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarGestureDetailType()I

    move-result v5

    .line 347
    sget v6, Lcom/android/systemui/R$id;->navigation_button_image:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    if-eqz v3, :cond_5

    .line 350
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    .line 351
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$900(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_4

    sget p3, Lcom/android/systemui/R$drawable;->quick_show_navi_img_d_01_rtl:I

    goto :goto_3

    :cond_4
    sget p3, Lcom/android/systemui/R$drawable;->quick_show_navi_img_d_01:I

    :goto_3
    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 350
    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 353
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    .line 354
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1000(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_6

    sget p3, Lcom/android/systemui/R$drawable;->quick_show_navi_img_d_02_rtl:I

    goto :goto_4

    :cond_6
    sget p3, Lcom/android/systemui/R$drawable;->quick_show_navi_img_d_02:I

    :goto_4
    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 353
    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_7
    if-eqz v3, :cond_9

    .line 358
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    .line 359
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1100(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_8

    sget p3, Lcom/android/systemui/R$drawable;->quick_show_navi_img_l_01_rtl:I

    goto :goto_5

    :cond_8
    sget p3, Lcom/android/systemui/R$drawable;->quick_show_navi_img_l_01:I

    :goto_5
    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 358
    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 361
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    .line 362
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1200(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_a

    sget p3, Lcom/android/systemui/R$drawable;->quick_show_navi_img_l_02_rtl:I

    goto :goto_6

    :cond_a
    sget p3, Lcom/android/systemui/R$drawable;->quick_show_navi_img_l_02:I

    :goto_6
    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 361
    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :goto_7
    sget p3, Lcom/android/systemui/R$id;->screen_gesture_image:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-ne v5, v1, :cond_b

    .line 368
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    .line 369
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1300(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->quick_gesture_navi_img_1key:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 368
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_c

    .line 372
    sget p3, Lcom/android/systemui/R$id;->screen_gesture_hint_1key_image:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_b
    if-nez v5, :cond_c

    .line 375
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    .line 376
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1400(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->quick_gesture_navi_img_3key:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 375
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_c

    .line 379
    sget p3, Lcom/android/systemui/R$id;->screen_gesture_hint_3key_image:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_c
    :goto_8
    new-instance p3, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;Landroid/widget/RadioGroup;)V

    .line 405
    sget v0, Lcom/android/systemui/R$id;->navigation_button_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 406
    new-instance v1, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;Landroid/widget/RadioGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    sget v0, Lcom/android/systemui/R$id;->screen_gesture_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    new-instance v1, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;Landroid/widget/RadioGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1390

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$200(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->qs_navigation_bar_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void
.end method
