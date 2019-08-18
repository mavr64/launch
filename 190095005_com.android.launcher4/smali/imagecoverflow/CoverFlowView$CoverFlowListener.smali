.class public interface abstract Limagecoverflow/CoverFlowView$CoverFlowListener;
.super Ljava/lang/Object;
.source "CoverFlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Limagecoverflow/CoverFlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CoverFlowListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Limagecoverflow/CoverFlowAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract imageOnTop(Limagecoverflow/CoverFlowView;IFFFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Limagecoverflow/CoverFlowView",
            "<TV;>;IFFFF)V"
        }
    .end annotation
.end method

.method public abstract invalidationCompleted()V
.end method

.method public abstract topImageClicked(Limagecoverflow/CoverFlowView;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Limagecoverflow/CoverFlowView",
            "<TV;>;I)V"
        }
    .end annotation
.end method
