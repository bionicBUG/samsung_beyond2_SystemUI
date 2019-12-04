.class Lkotlin/collections/MapsKt__MapsKt;
.super Lkotlin/collections/MapsKt__MapsJVMKt;
.source "Maps.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,737:1\n336#1:746\n347#1:751\n444#1,6:756\n469#1,6:762\n1092#2,4:738\n1092#2,4:742\n1092#2,4:747\n1092#2,4:752\n*E\n*S KotlinDebug\n*F\n+ 1 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n386#1:746\n401#1:751\n459#1,6:756\n484#1,6:762\n336#1,4:738\n347#1,4:742\n386#1,4:747\n401#1,4:752\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/MapsKt__MapsJVMKt;-><init>()V

    return-void
.end method

.method public static mapCapacity(I)I
    .locals 1
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 134
    div-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method
