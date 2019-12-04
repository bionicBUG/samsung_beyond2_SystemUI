.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$NavigationBarTile$Eu0a6r4cnvj1QibviipSp6F8Tng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$NavigationBarTile$Eu0a6r4cnvj1QibviipSp6F8Tng;->f$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$NavigationBarTile$Eu0a6r4cnvj1QibviipSp6F8Tng;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$NavigationBarTile$Eu0a6r4cnvj1QibviipSp6F8Tng;->f$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$NavigationBarTile$Eu0a6r4cnvj1QibviipSp6F8Tng;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->lambda$setNavigationBarGestureWhileHidden$1$NavigationBarTile(Z)V

    return-void
.end method
