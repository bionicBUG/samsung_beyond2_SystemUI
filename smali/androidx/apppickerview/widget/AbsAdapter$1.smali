.class final Landroidx/apppickerview/widget/AbsAdapter$1;
.super Ljava/lang/Object;
.source "AbsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/apppickerview/widget/AbsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;)I
    .locals 1

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    const/4 v0, 0x2

    .line 67
    invoke-virtual {p0, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 68
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 63
    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    check-cast p2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/apppickerview/widget/AbsAdapter$1;->compare(Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;)I

    move-result p0

    return p0
.end method
