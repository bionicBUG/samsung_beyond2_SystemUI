.class public final Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingListV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/MessagingListV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageBuilder"
.end annotation


# instance fields
.field final mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 0

    .line 113
    iget-object p0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    return-void
.end method
