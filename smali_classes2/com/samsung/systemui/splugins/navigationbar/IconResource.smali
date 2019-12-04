.class public Lcom/samsung/systemui/splugins/navigationbar/IconResource;
.super Ljava/lang/Object;
.source "IconResource.java"


# static fields
.field public static final UNDEFINED_RES_ID:I = -0x1


# instance fields
.field public mDarkDrawable:Landroid/graphics/drawable/Drawable;

.field public mDarkResId:I

.field public mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public mIsOldTint:Z

.field public mLightDrawable:Landroid/graphics/drawable/Drawable;

.field public mLightResId:I

.field public mNeedRtlCheck:Z


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 17
    iput p2, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    .line 18
    iput p3, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    .line 19
    iput-boolean p4, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    .line 20
    iput-boolean p5, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIsOldTint:Z

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 27
    iput-object p2, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    iput-object p3, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-boolean p4, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    .line 30
    iput-boolean p5, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIsOldTint:Z

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    .line 32
    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    return-void
.end method
