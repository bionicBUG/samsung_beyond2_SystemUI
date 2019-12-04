.class public Lkotlin/internal/PlatformImplementations;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultPlatformRandom()Lkotlin/random/Random;
    .locals 0

    .line 22
    new-instance p0, Lkotlin/random/FallbackThreadLocalRandom;

    invoke-direct {p0}, Lkotlin/random/FallbackThreadLocalRandom;-><init>()V

    return-object p0
.end method
