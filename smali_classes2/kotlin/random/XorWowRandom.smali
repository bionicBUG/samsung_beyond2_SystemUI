.class public final Lkotlin/random/XorWowRandom;
.super Lkotlin/random/Random;
.source "XorWowRandom.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n*L\n1#1,52:1\n*E\n"
.end annotation


# instance fields
.field private addend:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# virtual methods
.method public nextBits(I)I
    .locals 0

    .line 50
    invoke-virtual {p0}, Lkotlin/random/XorWowRandom;->nextInt()I

    move-result p0

    invoke-static {p0, p1}, Lkotlin/random/RandomKt;->takeUpperBits(II)I

    move-result p0

    return p0
.end method

.method public nextInt()I
    .locals 3

    .line 36
    iget v0, p0, Lkotlin/random/XorWowRandom;->x:I

    ushr-int/lit8 v1, v0, 0x2

    xor-int/2addr v0, v1

    .line 38
    iget v1, p0, Lkotlin/random/XorWowRandom;->y:I

    iput v1, p0, Lkotlin/random/XorWowRandom;->x:I

    .line 39
    iget v1, p0, Lkotlin/random/XorWowRandom;->z:I

    iput v1, p0, Lkotlin/random/XorWowRandom;->y:I

    .line 40
    iget v1, p0, Lkotlin/random/XorWowRandom;->w:I

    iput v1, p0, Lkotlin/random/XorWowRandom;->z:I

    .line 41
    iget v1, p0, Lkotlin/random/XorWowRandom;->v:I

    .line 42
    iput v1, p0, Lkotlin/random/XorWowRandom;->w:I

    shl-int/lit8 v2, v0, 0x1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v1, 0x4

    xor-int/2addr v0, v1

    .line 44
    iput v0, p0, Lkotlin/random/XorWowRandom;->v:I

    .line 45
    iget v1, p0, Lkotlin/random/XorWowRandom;->addend:I

    const v2, 0x587c5

    add-int/2addr v1, v2

    iput v1, p0, Lkotlin/random/XorWowRandom;->addend:I

    .line 46
    iget p0, p0, Lkotlin/random/XorWowRandom;->addend:I

    add-int/2addr v0, p0

    return v0
.end method
