.class public Lcom/syu/back/TrackUtils$Cubic;
.super Ljava/lang/Object;
.source "TrackUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/back/TrackUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cubic"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field final synthetic this$0:Lcom/syu/back/TrackUtils;


# direct methods
.method public constructor <init>(Lcom/syu/back/TrackUtils;FFFF)V
    .locals 0
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F

    .prologue
    .line 84
    iput-object p1, p0, Lcom/syu/back/TrackUtils$Cubic;->this$0:Lcom/syu/back/TrackUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p2, p0, Lcom/syu/back/TrackUtils$Cubic;->a:F

    .line 86
    iput p3, p0, Lcom/syu/back/TrackUtils$Cubic;->b:F

    .line 87
    iput p4, p0, Lcom/syu/back/TrackUtils$Cubic;->c:F

    .line 88
    iput p5, p0, Lcom/syu/back/TrackUtils$Cubic;->d:F

    .line 89
    return-void
.end method


# virtual methods
.method public eval(F)F
    .locals 2
    .param p1, "u"    # F

    .prologue
    .line 93
    iget v0, p0, Lcom/syu/back/TrackUtils$Cubic;->d:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/syu/back/TrackUtils$Cubic;->c:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/syu/back/TrackUtils$Cubic;->b:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/syu/back/TrackUtils$Cubic;->a:F

    add-float/2addr v0, v1

    return v0
.end method
