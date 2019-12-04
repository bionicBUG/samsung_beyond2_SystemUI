.class Landroidx/apppickerview/widget/AppPickerView$1;
.super Ljava/lang/Object;
.source "AppPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;


# virtual methods
.method public run()V
    .locals 2

    .line 294
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object v0

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {p0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getItemCount()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method
