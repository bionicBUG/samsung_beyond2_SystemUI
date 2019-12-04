.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;
.super Ljava/lang/Object;
.source "MinimizeContainerIconLoader.java"


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field protected mContext:Landroid/content/Context;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconBg:Landroid/graphics/drawable/Drawable;

.field private mIconFocusedLine:Landroid/graphics/drawable/Drawable;

.field protected mIconSourceSize:I

.field private mIconTargetSize:I

.field private mIconUnfocusedLine:Landroid/graphics/drawable/Drawable;

.field private mOffsetForMinimizeAppIcon:F

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field protected mShowingIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->DEBUG:Z

    const-string v1, "BubbleContainerManager"

    if-eqz v0, :cond_0

    const-string v0, "[IconLoader] start loading icon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    .line 57
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mActivityManager:Landroid/app/ActivityManager;

    .line 58
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 60
    invoke-virtual {p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getUserId()I

    move-result p1

    .line 61
    invoke-virtual {p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getRealActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->loadResources()Landroid/content/res/Resources;

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3, p1}, Landroid/content/pm/PackageManager;->getActivityInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->setDescription(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->getAppIconDrawable(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconSourceSize:I

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconSourceSize:I

    invoke-virtual {p0, p2, v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconSourceSize:I

    invoke-virtual {p0, v2, v3, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IconLoader] load info failed! use system icon, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->drawShowingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 79
    :cond_1
    sget-boolean p2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->DEBUG:Z

    if-eqz p2, :cond_2

    const-string p2, "[IconLoader] getAppIconDrawable: knox icon"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    :cond_3
    return-void
.end method

.method private clipCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 168
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 169
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->minimize_task_app_icon_clip_circle_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    int-to-float v1, v1

    div-float/2addr v1, v4

    int-to-float v3, v3

    .line 171
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 172
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_2

    .line 179
    invoke-virtual {p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 183
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 188
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 189
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 190
    invoke-virtual {v3, p1, v4, v4, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v3, p2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 193
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 195
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 196
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v4, 0x32

    const/16 v5, 0xff

    .line 198
    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 201
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 202
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 205
    invoke-virtual {v3, p2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 207
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v3, p2, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 208
    invoke-virtual {v3, p2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 210
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 211
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 213
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v4, v1, v1, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    invoke-virtual {p2, v2, v3, v4, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method private getAppIconDrawable(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->getAppIconDrawableById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v0

    :goto_1
    return-object p0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getAppIconDrawableById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    const/4 v1, 0x0

    .line 271
    :try_start_0
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    return-object v1
.end method


# virtual methods
.method protected createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;
    .locals 6

    .line 135
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->clipCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p4

    .line 138
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    .line 139
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    .line 140
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 143
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 145
    invoke-virtual {p2, v3, v3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int p2, p4, p2

    int-to-float p2, p2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p2, v4

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mOffsetForMinimizeAppIcon:F

    add-float/2addr p2, v5

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, p5, v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mOffsetForMinimizeAppIcon:F

    add-float/2addr v5, p0

    .line 152
    invoke-virtual {v1, p1, p2, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    :cond_1
    invoke-virtual {p3, v3, v3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method protected createIconBitmap(Z)Landroid/graphics/Bitmap;
    .locals 6

    .line 161
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconBg:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconFocusedLine:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconUnfocusedLine:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected drawShowingIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->createIconBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->createIconBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->drawShowingIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected drawShowingIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 123
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 124
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 126
    new-instance p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 p2, 0x1

    new-array v1, p2, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 127
    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, p2, [I

    const v0, -0x10100a7

    aput v0, p2, v2

    .line 128
    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method getShowingIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method protected getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 264
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->getAppIconDrawableById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected loadResources()Landroid/content/res/Resources;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    sget v1, Lcom/android/systemui/R$dimen;->minimize_task_app_icon_source_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconSourceSize:I

    .line 96
    sget v1, Lcom/android/systemui/R$dimen;->minimize_task_app_icon_target_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconTargetSize:I

    .line 98
    sget v1, Lcom/android/systemui/R$drawable;->minimize_container_icon_bg:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconTargetSize:I

    invoke-virtual {p0, v1, v3, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconBg:Landroid/graphics/drawable/Drawable;

    .line 100
    sget v1, Lcom/android/systemui/R$dimen;->minimize_task_app_icon_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mOffsetForMinimizeAppIcon:F

    .line 102
    sget v1, Lcom/android/systemui/R$drawable;->minimize_container_icon_circle_line:I

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconTargetSize:I

    .line 102
    invoke-virtual {p0, v1, v3, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconFocusedLine:Landroid/graphics/drawable/Drawable;

    .line 106
    sget v1, Lcom/android/systemui/R$drawable;->minimize_container_icon_circle_line:I

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconTargetSize:I

    .line 106
    invoke-virtual {p0, v1, v2, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mIconUnfocusedLine:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 219
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 221
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 222
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x1

    .line 223
    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-lez v0, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p2

    if-eq v0, p2, :cond_1

    .line 226
    sget-boolean p2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[IconLoader] change bitmap densityDpi="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", old="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BubbleContainerManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 229
    :cond_1
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    .line 231
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 232
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method
