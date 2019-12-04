.class Landroidx/apppickerview/widget/AppPickerView$3;
.super Ljava/lang/Object;
.source "AppPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;


# virtual methods
.method public run()V
    .locals 0

    .line 312
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$3;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {p0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
