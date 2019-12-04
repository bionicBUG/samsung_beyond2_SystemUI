.class public Lcom/android/systemui/qs/QSDetailItems$Item;
.super Ljava/lang/Object;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public canDisconnect:Z

.field public icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public icon2:I

.field public iconBackground:Z

.field public iconResId:I

.field public isActive:Z

.field public isClickable:Z

.field public isDisabled:Z

.field public isInProgress:Z

.field public line1:Ljava/lang/CharSequence;

.field public line2:Ljava/lang/CharSequence;

.field public overlay:Landroid/graphics/drawable/Drawable;

.field public tag:Ljava/lang/Object;

.field public tint:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->iconBackground:Z

    .line 343
    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->tint:I

    .line 345
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    const/4 v0, -0x1

    .line 353
    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    return-void
.end method
