.class public Lcom/android/launcher3/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source "BaseIconFactory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;
    }
.end annotation


# static fields
.field static final ATLEAST_OREO:Z

.field static final ATLEAST_P:Z


# instance fields
.field private mDisableColorExtractor:Z

.field private mWrapperBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/icons/BaseIconFactory;->ATLEAST_OREO:Z

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/launcher3/icons/BaseIconFactory;->ATLEAST_P:Z

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mDisableColorExtractor:Z

    return-void
.end method

.method public close()V
    .locals 0

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    return-void
.end method
