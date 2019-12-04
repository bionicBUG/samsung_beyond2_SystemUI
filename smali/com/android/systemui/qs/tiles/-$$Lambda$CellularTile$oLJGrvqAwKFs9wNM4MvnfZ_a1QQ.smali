.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$oLJGrvqAwKFs9wNM4MvnfZ_a1QQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$oLJGrvqAwKFs9wNM4MvnfZ_a1QQ;->f$0:Lcom/android/systemui/qs/tiles/CellularTile;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$oLJGrvqAwKFs9wNM4MvnfZ_a1QQ;->f$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->lambda$maybeShowDisableDialog$0$CellularTile(Landroid/content/DialogInterface;I)V

    return-void
.end method
