.class public final Lkotlin/jvm/internal/DoubleCompanionObject;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

# The value of this static final field might be set in the static constructor
.field private static final MAX_VALUE:D = 1.7976931348623157E308

# The value of this static final field might be set in the static constructor
.field private static final MIN_VALUE:D = 4.9E-324

# The value of this static final field might be set in the static constructor
.field private static final NEGATIVE_INFINITY:D = -Infinity

# The value of this static final field might be set in the static constructor
.field private static final NaN:D = NaN

# The value of this static final field might be set in the static constructor
.field private static final POSITIVE_INFINITY:D = Infinity


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-direct {v0}, Lkotlin/jvm/internal/DoubleCompanionObject;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    const-wide/16 v0, 0x1

    .line 9
    sput-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->MIN_VALUE:D

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 10
    sput-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->MAX_VALUE:D

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 11
    sput-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->POSITIVE_INFINITY:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 12
    sput-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->NEGATIVE_INFINITY:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 13
    sput-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->NaN:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
