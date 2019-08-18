.class public Lcom/syu/util/Id3Info;
.super Ljava/lang/Object;
.source "Id3Info.java"


# instance fields
.field public dataPic:[B

.field public strAlbum:Ljava/lang/String;

.field public strArtist:Ljava/lang/String;

.field public strTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    .line 3
    return-void
.end method
