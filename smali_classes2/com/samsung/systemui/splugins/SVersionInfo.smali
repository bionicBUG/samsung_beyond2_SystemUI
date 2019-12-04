.class public Lcom/samsung/systemui/splugins/SVersionInfo;
.super Ljava/lang/Object;
.source "SVersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/SVersionInfo$Version;,
        Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;
    }
.end annotation


# instance fields
.field private mDefault:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mVersions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/systemui/splugins/SVersionInfo$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    return-void
.end method

.method private addClass(Ljava/lang/Class;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    const-class v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 53
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v3, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->version()I

    move-result v0

    invoke-direct {v3, v0, v1}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1
    const-class v0, Lcom/samsung/systemui/splugins/annotations/Requires;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/Requires;

    if-eqz v0, :cond_2

    .line 57
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/Requires;->version()I

    move-result v0

    invoke-direct {v4, v0, p2}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2
    const-class v0, Lcom/samsung/systemui/splugins/annotations/Requirements;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/Requirements;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 61
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/Requirements;->value()[Lcom/samsung/systemui/splugins/annotations/Requires;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 62
    iget-object v6, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v5}, Lcom/samsung/systemui/splugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v5}, Lcom/samsung/systemui/splugins/annotations/Requires;->version()I

    move-result v5

    invoke-direct {v8, v5, p2}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    :cond_3
    const-class p2, Lcom/samsung/systemui/splugins/annotations/DependsOn;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/annotations/DependsOn;

    if-eqz p2, :cond_4

    .line 67
    invoke-interface {p2}, Lcom/samsung/systemui/splugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p2, v1}, Lcom/samsung/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    .line 69
    :cond_4
    const-class p2, Lcom/samsung/systemui/splugins/annotations/Dependencies;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/annotations/Dependencies;

    if-eqz p1, :cond_5

    .line 71
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/annotations/Dependencies;->value()[Lcom/samsung/systemui/splugins/annotations/DependsOn;

    move-result-object p1

    array-length p2, p1

    :goto_1
    if-ge v2, p2, :cond_5

    aget-object v0, p1, v2

    .line 72
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private createVersion(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SVersionInfo$Version;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/systemui/splugins/SVersionInfo$Version;"
        }
    .end annotation

    .line 102
    const-class p0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    if-eqz p0, :cond_0

    .line 104
    new-instance p1, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->version()I

    move-result p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$checkVersion$1(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SVersionInfo$Version;)V
    .locals 2

    .line 94
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->access$100(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance p1, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing required dependency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw p1
.end method


# virtual methods
.method public addClass(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SVersionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/systemui/splugins/SVersionInfo;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 43
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/samsung/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    return-object p0
.end method

.method public checkVersion(Lcom/samsung/systemui/splugins/SVersionInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;
        }
    .end annotation

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 79
    iget-object p1, p1, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v1, Lcom/samsung/systemui/splugins/-$$Lambda$SVersionInfo$3JGtObkwo_Asg4tRTXDwN_Jm5lo;

    invoke-direct {v1, p0, v0}, Lcom/samsung/systemui/splugins/-$$Lambda$SVersionInfo$3JGtObkwo_Asg4tRTXDwN_Jm5lo;-><init>(Lcom/samsung/systemui/splugins/SVersionInfo;Landroid/util/ArrayMap;)V

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 93
    sget-object p0, Lcom/samsung/systemui/splugins/-$$Lambda$SVersionInfo$yFkmWUmXIqM7tQdyLPOyh7eWrpA;->INSTANCE:Lcom/samsung/systemui/splugins/-$$Lambda$SVersionInfo$yFkmWUmXIqM7tQdyLPOyh7eWrpA;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public getDefaultVersion()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->access$000(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)I

    move-result p0

    return p0
.end method

.method public hasClass(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasVersionInfo()Z
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$checkVersion$0$SVersionInfo(Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SVersionInfo$Version;)V
    .locals 2

    .line 80
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    if-nez p1, :cond_0

    .line 82
    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/SVersionInfo;->createVersion(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    move-result-object p1

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->getMajorVersion()I

    move-result v0

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->getMajorVersion()I

    move-result v1

    if-gt v0, v1, :cond_1

    return-void

    .line 88
    :cond_1
    new-instance v0, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a supporting version. expected "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->access$000(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->access$000(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v0

    .line 85
    :cond_2
    new-instance p1, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not provide an interface"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw p1
.end method
