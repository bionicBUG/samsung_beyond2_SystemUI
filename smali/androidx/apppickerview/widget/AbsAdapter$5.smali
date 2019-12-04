.class Landroidx/apppickerview/widget/AbsAdapter$5;
.super Landroid/widget/Filter;
.source "AbsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/apppickerview/widget/AbsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/apppickerview/widget/AbsAdapter;


# direct methods
.method constructor <init>(Landroidx/apppickerview/widget/AbsAdapter;)V
    .locals 0

    .line 257
    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 260
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p1}, Landroidx/apppickerview/widget/AbsAdapter;->access$100(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/apppickerview/widget/AbsAdapter;->access$002(Landroidx/apppickerview/widget/AbsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 263
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    const-string v0, ""

    invoke-static {p1, v0}, Landroidx/apppickerview/widget/AbsAdapter;->access$202(Landroidx/apppickerview/widget/AbsAdapter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 265
    :cond_0
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {v0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->access$202(Landroidx/apppickerview/widget/AbsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {v1}, Landroidx/apppickerview/widget/AbsAdapter;->access$100(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    .line 268
    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_2
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p1, v0}, Landroidx/apppickerview/widget/AbsAdapter;->access$002(Landroidx/apppickerview/widget/AbsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 275
    :goto_1
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 276
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p0}, Landroidx/apppickerview/widget/AbsAdapter;->access$000(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;

    move-result-object p0

    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 282
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroidx/apppickerview/widget/AbsAdapter;->access$002(Landroidx/apppickerview/widget/AbsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 284
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p1}, Landroidx/apppickerview/widget/AbsAdapter;->access$300(Landroidx/apppickerview/widget/AbsAdapter;)V

    .line 285
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
