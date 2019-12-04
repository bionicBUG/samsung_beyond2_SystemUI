.class public final synthetic Lcom/android/systemui/-$$Lambda$ScreenDecorations$GNwyg0HIFaxI4YsxonVvp4DHGm8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/vr/GearVrManager$GearVrListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$GNwyg0HIFaxI4YsxonVvp4DHGm8;->f$0:Lcom/android/systemui/ScreenDecorations;

    return-void
.end method


# virtual methods
.method public final onGearVrStateChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$GNwyg0HIFaxI4YsxonVvp4DHGm8;->f$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/ScreenDecorations;->lambda$startOnScreenDecorationsThread$3$ScreenDecorations(II)V

    return-void
.end method
