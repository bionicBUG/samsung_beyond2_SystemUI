.class public Lcom/android/systemui/infinity/preview/ParticleModel;
.super Ljava/lang/Object;
.source "ParticleModel.java"


# static fields
.field public static ZIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/infinity/preview/ParticleModel;",
            ">;"
        }
    .end annotation
.end field

.field public static count:I


# instance fields
.field public alpha:F

.field public blinkSpeed:F

.field public color:I

.field public expand:F

.field public index:I

.field public initBlink:F

.field public isStart:Z

.field public needBlink:Z

.field public needLongBlink:Z

.field public radius:F

.field public tension:F

.field public tx:F

.field public ty:F

.field public tz:F

.field public x:F

.field public xRand:F

.field public y:F

.field public yRand:F

.field public yx:F

.field public yy:F

.field public yz:F

.field public z:F

.field public zRand:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/android/systemui/infinity/preview/ParticleModel$1;

    invoke-direct {v0}, Lcom/android/systemui/infinity/preview/ParticleModel$1;-><init>()V

    sput-object v0, Lcom/android/systemui/infinity/preview/ParticleModel;->ZIndexComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needBlink:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needLongBlink:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->isStart:Z

    const/high16 v0, 0x42480000    # 50.0f

    .line 55
    iput v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    .line 58
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    .line 59
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v0, v3

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->y:F

    .line 60
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v0, v3

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    .line 61
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needBlink:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needLongBlink:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->isStart:Z

    const/high16 v1, 0x42480000    # 50.0f

    .line 55
    iput v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    .line 65
    iput p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    .line 66
    iput p2, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->y:F

    .line 67
    iput p3, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    .line 68
    iput p4, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->radius:F

    .line 69
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p5

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p5, p1

    iput p5, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    .line 70
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x3f666666    # 0.9f

    mul-float/2addr p1, p2

    const p2, 0x3dcccccd    # 0.1f

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->blinkSpeed:F

    .line 71
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->initBlink:F

    .line 73
    sget p1, Lcom/android/systemui/infinity/preview/ParticleModel;->count:I

    iput p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->index:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 74
    sput p1, Lcom/android/systemui/infinity/preview/ParticleModel;->count:I

    .line 75
    iget p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->index:I

    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needBlink:Z

    .line 76
    iget-boolean p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needBlink:Z

    if-nez p1, :cond_2

    .line 77
    iget p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->index:I

    rem-int/lit8 p1, p1, 0x29

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needLongBlink:Z

    .line 80
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p3

    const-wide v1, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double p1, p3, v1

    const/4 p3, -0x1

    if-lez p1, :cond_3

    const-string p1, "#ffffff"

    .line 81
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    goto :goto_2

    .line 83
    :cond_3
    iput p3, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    .line 85
    :goto_2
    iput p3, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    .line 87
    iget p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->index:I

    rem-int/lit16 p1, p1, 0xc9

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move p2, v0

    :goto_3
    iput-boolean p2, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->isStart:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/infinity/preview/ParticleModel;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    iget p1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method
