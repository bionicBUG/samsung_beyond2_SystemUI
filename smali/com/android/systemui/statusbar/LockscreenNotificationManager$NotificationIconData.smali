.class public Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;
.super Ljava/lang/Object;
.source "LockscreenNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/LockscreenNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationIconData"
.end annotation


# instance fields
.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mIconArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

.field private mTagFreshDrawable:I

.field private mTagIsAppColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 362
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mContext:Landroid/content/Context;

    return-void
.end method

.method private refreshDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    const/4 p0, 0x0

    .line 432
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addImageViewIon(Landroid/widget/ImageView;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllImageViewIcon()V
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public createImageViewIcon(Landroid/graphics/drawable/Drawable;ILandroid/widget/ImageView$ScaleType;)V
    .locals 4

    .line 401
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 403
    :goto_0
    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    .line 404
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p2

    .line 405
    new-array v1, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 407
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 408
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    :cond_1
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 413
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 416
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_3

    .line 419
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 422
    :cond_3
    :goto_2
    iget p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagIsAppColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 423
    iget p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagFreshDrawable:I

    invoke-virtual {v0, p2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 424
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->addImageViewIon(Landroid/widget/ImageView;)V

    return-void
.end method

.method public createImageViewIcon(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/service/notification/StatusBarNotification;Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 389
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget v2, p1, Landroid/app/Notification;->color:I

    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mColor:I

    .line 397
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->createImageViewIcon(Landroid/graphics/drawable/Drawable;ILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public getIconArrayChild(I)Landroid/widget/ImageView;
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public getIconArraySize()I
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setTagKeys(II)V
    .locals 0

    .line 437
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagFreshDrawable:I

    .line 438
    iput p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagIsAppColor:I

    return-void
.end method
