.class Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$2;
.super Ljava/lang/Object;
.source "NavigationBarTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

.field final synthetic val$optionContainer:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$2;->val$optionContainer:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$2;->val$optionContainer:Landroid/widget/RadioGroup;

    sget p1, Lcom/android/systemui/R$id;->navigation_button:I

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method
