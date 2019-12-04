.class public final synthetic Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$GX93dBBW8bFmPM5IfW_bWzvZJlc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/external/CustomTile;

.field private final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$GX93dBBW8bFmPM5IfW_bWzvZJlc;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    iput-object p2, p0, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$GX93dBBW8bFmPM5IfW_bWzvZJlc;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$GX93dBBW8bFmPM5IfW_bWzvZJlc;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-object p0, p0, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$GX93dBBW8bFmPM5IfW_bWzvZJlc;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/external/CustomTile;->lambda$handleUpdateState$0$CustomTile(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method
