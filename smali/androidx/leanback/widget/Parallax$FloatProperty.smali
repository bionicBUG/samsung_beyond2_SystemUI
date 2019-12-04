.class public Landroidx/leanback/widget/Parallax$FloatProperty;
.super Landroid/util/Property;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroidx/leanback/widget/Parallax;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIndex:I


# virtual methods
.method public final get(Landroidx/leanback/widget/Parallax;)Ljava/lang/Float;
    .locals 0

    .line 286
    iget p0, p0, Landroidx/leanback/widget/Parallax$FloatProperty;->mIndex:I

    invoke-virtual {p1, p0}, Landroidx/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 257
    check-cast p1, Landroidx/leanback/widget/Parallax;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Parallax$FloatProperty;->get(Landroidx/leanback/widget/Parallax;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getIndex()I
    .locals 0

    .line 298
    iget p0, p0, Landroidx/leanback/widget/Parallax$FloatProperty;->mIndex:I

    return p0
.end method

.method public final set(Landroidx/leanback/widget/Parallax;Ljava/lang/Float;)V
    .locals 0

    .line 291
    iget p0, p0, Landroidx/leanback/widget/Parallax$FloatProperty;->mIndex:I

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroidx/leanback/widget/Parallax;->setFloatPropertyValue(IF)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 257
    check-cast p1, Landroidx/leanback/widget/Parallax;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/Parallax$FloatProperty;->set(Landroidx/leanback/widget/Parallax;Ljava/lang/Float;)V

    return-void
.end method
