.class Landroidx/apppickerview/widget/AppPickerView$2;
.super Ljava/lang/Object;
.source "AppPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;

.field final synthetic val$position:I


# virtual methods
.method public run()V
    .locals 1

    .line 303
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$2;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object v0

    iget p0, p0, Landroidx/apppickerview/widget/AppPickerView$2;->val$position:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
