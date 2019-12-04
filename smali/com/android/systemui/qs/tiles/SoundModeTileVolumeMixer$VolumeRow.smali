.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private bar:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

.field private seekbar:Landroid/widget/SeekBar;

.field private stream:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
