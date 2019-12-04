.class public Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;
.super Landroid/widget/LinearLayout;
.source "EmergencyPhoneWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final BG_COLOR_ONFOCUS:I


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mContainer:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageMaxSize:I

.field private mImgView:Landroid/widget/ImageView;

.field private mPhoneAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc8

    const/16 v1, 0x52

    const/16 v2, 0xdb

    const/16 v3, 0xe2

    .line 71
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->BG_COLOR_ONFOCUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->initialize()V

    return-void
.end method

.method private callEmergencyNumber()V
    .locals 5

    const-string v0, "Failed to place Emergency call"

    const-string v1, "LSO"

    .line 197
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 198
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 200
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 202
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private initialize()V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    const/16 v0, 0x11

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 92
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 93
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 102
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const v3, 0x1080701

    .line 105
    invoke-static {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    iget v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    invoke-static {v0, v3, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 120
    :cond_0
    new-instance v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const v4, 0x1040758

    invoke-static {v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 136
    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->callEmergencyNumber()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 210
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    sget p1, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->BG_COLOR_ONFOCUS:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 214
    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
