.class public Landroidx/leanback/widget/Parallax$IntProperty;
.super Landroid/util/Property;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroidx/leanback/widget/Parallax;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 127
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 128
    iput p2, p0, Landroidx/leanback/widget/Parallax$IntProperty;->mIndex:I

    return-void
.end method


# virtual methods
.method public final get(Landroidx/leanback/widget/Parallax;)Ljava/lang/Integer;
    .locals 0

    .line 133
    iget p0, p0, Landroidx/leanback/widget/Parallax$IntProperty;->mIndex:I

    invoke-virtual {p1, p0}, Landroidx/leanback/widget/Parallax;->getIntPropertyValue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p1, Landroidx/leanback/widget/Parallax;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Parallax$IntProperty;->get(Landroidx/leanback/widget/Parallax;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getIndex()I
    .locals 0

    .line 145
    iget p0, p0, Landroidx/leanback/widget/Parallax$IntProperty;->mIndex:I

    return p0
.end method

.method public final set(Landroidx/leanback/widget/Parallax;Ljava/lang/Integer;)V
    .locals 0

    .line 138
    iget p0, p0, Landroidx/leanback/widget/Parallax$IntProperty;->mIndex:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroidx/leanback/widget/Parallax;->setIntPropertyValue(II)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Landroidx/leanback/widget/Parallax;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/Parallax$IntProperty;->set(Landroidx/leanback/widget/Parallax;Ljava/lang/Integer;)V

    return-void
.end method
