.class Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;
.super Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;
.source "SmartPopupViewIconLoader.java"


# instance fields
.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBadgeBg:Landroid/graphics/drawable/Drawable;

.field private mBadgeFocusedLine:Landroid/graphics/drawable/Drawable;

.field private mBadgeSourceSize:I

.field private mBadgeTargetSize:I

.field private mBadgeUnfocusedLine:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;)V
    .locals 5

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;-><init>()V

    .line 24
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->DEBUG:Z

    const-string v1, "BubbleContainerManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IconLoader] start loading icon item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    .line 27
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 29
    invoke-virtual {p2}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 30
    invoke-virtual {p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    .line 36
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 36
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {p2, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->setDescription(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IconLoader] load info failed! use system icon, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p2, v2

    .line 46
    :goto_0
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 50
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->loadResources()Landroid/content/res/Resources;

    if-nez p1, :cond_2

    .line 53
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconSourceSize:I

    invoke-virtual {p0, p2, p1, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadge:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 56
    :cond_2
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconSourceSize:I

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 57
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeSourceSize:I

    invoke-virtual {p0, p2, p1, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 60
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->drawShowingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private drawTargetInOrigin(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 100
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 105
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    invoke-virtual {v2, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected drawShowingIcon()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 84
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadge:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->drawShowingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->createIconBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->createIconBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadge:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeBg:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeFocusedLine:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeUnfocusedLine:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 94
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->drawTargetInOrigin(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->drawShowingIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected loadResources()Landroid/content/res/Resources;
    .locals 4

    .line 65
    invoke-super {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->loadResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    sget v1, Lcom/android/systemui/R$dimen;->smart_popup_view_badge_soruce_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeSourceSize:I

    .line 68
    sget v1, Lcom/android/systemui/R$dimen;->smart_popup_view_badge_target_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeTargetSize:I

    .line 70
    sget v1, Lcom/android/systemui/R$drawable;->minimize_container_icon_bg:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeTargetSize:I

    invoke-virtual {p0, v1, v3, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeBg:Landroid/graphics/drawable/Drawable;

    .line 72
    sget v1, Lcom/android/systemui/R$drawable;->minimize_container_icon_circle_line:I

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeTargetSize:I

    .line 72
    invoke-virtual {p0, v1, v3, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeFocusedLine:Landroid/graphics/drawable/Drawable;

    .line 75
    sget v1, Lcom/android/systemui/R$drawable;->minimize_container_icon_circle_line:I

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeTargetSize:I

    .line 75
    invoke-virtual {p0, v1, v2, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;->mBadgeUnfocusedLine:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
