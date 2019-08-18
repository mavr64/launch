.class public Lcom/android/gallery3d/glrenderer/GLES20IdImpl;
.super Ljava/lang/Object;
.source "GLES20IdImpl.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/GLId;


# instance fields
.field private final mTempIntArray:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20IdImpl;->mTempIntArray:[I

    .line 8
    return-void
.end method


# virtual methods
.method public generateTexture()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20IdImpl;->mTempIntArray:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 14
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 15
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20IdImpl;->mTempIntArray:[I

    aget v0, v0, v2

    return v0
.end method

.method public glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL11;
    .param p2, "n"    # I
    .param p3, "buffers"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 33
    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 34
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 35
    return-void
.end method

.method public glDeleteFramebuffers(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;I[II)V
    .locals 0
    .param p1, "gl11ep"    # Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    .param p2, "n"    # I
    .param p3, "buffers"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 39
    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 40
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 41
    return-void
.end method

.method public glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL11;
    .param p2, "n"    # I
    .param p3, "textures"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 26
    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 27
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 28
    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 20
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 21
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 22
    return-void
.end method
