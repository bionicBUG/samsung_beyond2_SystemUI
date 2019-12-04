.class Lcom/samsung/systemui/splugins/SVersionInfo$Version;
.super Ljava/lang/Object;
.source "SVersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SVersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Version"
.end annotation


# instance fields
.field private final mRequired:Z

.field private final mVersion:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mVersion:I

    .line 138
    iput-boolean p2, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mRequired:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)I
    .locals 0

    .line 131
    iget p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mVersion:I

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mRequired:Z

    return p0
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mVersion:I

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method
