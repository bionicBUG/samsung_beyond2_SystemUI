.class public Lcom/android/systemui/qs/external/TileColorPicker;
.super Ljava/lang/Object;
.source "TileColorPicker.java"


# static fields
.field static final DISABLE_STATE_SET:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ENABLE_STATE_SET:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final INACTIVE_STATE_SET:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    .line 27
    sput-object v1, Lcom/android/systemui/qs/external/TileColorPicker;->DISABLE_STATE_SET:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 28
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/qs/external/TileColorPicker;->ENABLE_STATE_SET:[I

    new-array v0, v0, [I

    const v1, -0x10102fe

    aput v1, v0, v2

    .line 30
    sput-object v0, Lcom/android/systemui/qs/external/TileColorPicker;->INACTIVE_STATE_SET:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10102fe
    .end array-data
.end method
