.class public Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssistanceAppItemListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResourceId:I

.field private mSelectedItem:I

.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;",
            ">;)V"
        }
    .end annotation

    .line 754
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->this$0:Lcom/android/systemui/assist/AssistManager;

    .line 755
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 757
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mContext:Landroid/content/Context;

    .line 758
    iput p3, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getSelectedItem()Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;
    .locals 1

    .line 766
    iget v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 771
    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 773
    iget-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p2}, Lcom/android/systemui/assist/AssistManager;->access$200(Lcom/android/systemui/assist/AssistManager;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mResourceId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 776
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    if-eqz p3, :cond_4

    .line 778
    sget v1, Lcom/android/systemui/R$id;->check_box:I

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 779
    sget v2, Lcom/android/systemui/R$id;->app_icon:I

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 780
    sget v3, Lcom/android/systemui/R$id;->app_name:I

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 783
    invoke-virtual {p3}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 787
    invoke-virtual {p3}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v1, :cond_4

    .line 791
    iget p0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    .line 792
    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 794
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_4
    :goto_0
    return-object p2
.end method

.method public setSelectedItem(I)V
    .locals 0

    .line 762
    iput p1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    return-void
.end method
