.class public Lcom/syu/jni/ToolsJni;
.super Ljava/lang/Object;
.source "ToolsJni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cmd_104_write_gamma([B)I
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 287
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 290
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 291
    const/16 v2, 0x68

    const/4 v3, 0x0

    .line 290
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 293
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cmd_105_set_bl_adj(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 304
    const/16 v2, 0x69

    const/4 v3, 0x0

    .line 303
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public static cmd_109_get_bl_limit()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 322
    const/4 v2, 0x3

    new-array v1, v2, [I

    .line 323
    .local v1, "result":[I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 324
    .local v0, "outparam":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 325
    const/16 v3, 0x6d

    const/4 v4, 0x0

    .line 324
    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 326
    if-eqz v0, :cond_0

    .line 327
    const-string v2, "param0"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 328
    const/4 v2, 0x1

    const-string v3, "param1"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 329
    const/4 v2, 0x2

    const-string v3, "param2"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 331
    :cond_0
    return-object v1
.end method

.method public static cmd_10_little_hom(I)I
    .locals 4
    .param p0, "on"    # I

    .prologue
    .line 161
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 165
    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 164
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 167
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cmd_110_set_bl_limit(II)I
    .locals 4
    .param p0, "max"    # I
    .param p1, "min"    # I

    .prologue
    .line 311
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v1, "param1"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 315
    const/16 v2, 0x6e

    const/4 v3, 0x0

    .line 314
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public static cmd_11_video_ntsc_pal(I)I
    .locals 4
    .param p0, "on"    # I

    .prologue
    .line 175
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 179
    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 178
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 181
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cmd_12_get_usb_speed()I
    .locals 5

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "result":I
    sget-boolean v2, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v2, :cond_0

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "outparam":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 193
    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 192
    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 194
    if-eqz v0, :cond_0

    .line 195
    const-string v2, "param0"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 198
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_13_write_usb_speed(I)I
    .locals 4
    .param p0, "speed"    # I

    .prologue
    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, "inparam":Landroid/os/Bundle;
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 210
    const/16 v2, 0xd

    const/4 v3, 0x0

    .line 209
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 212
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cmd_14_set_backcar_type(I)I
    .locals 4
    .param p0, "type"    # I

    .prologue
    .line 220
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 225
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static cmd_15_get_backcar_type()I
    .locals 5

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "result":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, "outparam":Landroid/os/Bundle;
    :try_start_0
    sget-boolean v2, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v2, :cond_0

    .line 237
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 238
    const/16 v3, 0xf

    const/4 v4, 0x0

    .line 237
    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 240
    if-eqz v0, :cond_0

    .line 241
    const-string v2, "param0"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 244
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static cmd_16_set_led_colors(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "save"    # I

    .prologue
    .line 256
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v1, "param1"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 261
    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 260
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 263
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cmd_17_get_led_colors()I
    .locals 5

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "result":I
    sget-boolean v2, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v2, :cond_0

    .line 273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v0, "outparam":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 275
    const/16 v3, 0x11

    const/4 v4, 0x0

    .line 274
    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 276
    if-eqz v0, :cond_0

    .line 277
    const-string v2, "param0"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 280
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_1_backcarMirror(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 29
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 33
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 35
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cmd_27_set_bl_param(III)I
    .locals 4
    .param p0, "maxbl"    # I
    .param p1, "minbl"    # I
    .param p2, "defaultbl"    # I

    .prologue
    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param3"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    const-string v1, "param4"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    const-string v1, "param5"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 344
    const/16 v2, 0x1b

    const/4 v3, 0x0

    .line 343
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public static cmd_28_get_bl_param()[I
    .locals 5

    .prologue
    .line 348
    const/4 v2, 0x6

    new-array v1, v2, [I

    .line 349
    .local v1, "result":[I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "outparam":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 351
    const/16 v3, 0x1c

    const/4 v4, 0x0

    .line 350
    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 352
    if-eqz v0, :cond_0

    .line 353
    const/4 v2, 0x0

    const-string v3, "param0"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 354
    const/4 v2, 0x1

    const-string v3, "param1"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 355
    const/4 v2, 0x2

    const-string v3, "param2"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 356
    const/4 v2, 0x3

    const-string v3, "param3"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 357
    const/4 v2, 0x4

    const-string v3, "param4"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 358
    const/4 v2, 0x5

    const-string v3, "param5"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 360
    :cond_0
    return-object v1
.end method

.method public static cmd_2_soundMix(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 43
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 47
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 49
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cmd_3_encarption_result()I
    .locals 5

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "result":I
    sget-boolean v2, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "outparam":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 61
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 60
    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 63
    if-eqz v0, :cond_0

    .line 64
    const-string v2, "param0"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 67
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_4_audio_state()I
    .locals 5

    .prologue
    .line 75
    const/4 v1, 0x1

    .line 76
    .local v1, "result":I
    sget-boolean v2, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v2, :cond_0

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "outparam":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 79
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 78
    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 80
    if-eqz v0, :cond_0

    .line 81
    const-string v2, "param0"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 84
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_5_turnoff_lcdc(I)I
    .locals 4
    .param p0, "isClose"    # I

    .prologue
    .line 91
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 95
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 97
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cmd_6_mute_amp(I)I
    .locals 4
    .param p0, "mute"    # I

    .prologue
    .line 104
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 108
    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 107
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 110
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cmd_7_get_amp_state()I
    .locals 5

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "result":I
    sget-boolean v2, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v2, :cond_0

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "outparam":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 123
    const/4 v3, 0x7

    const/4 v4, 0x0

    .line 122
    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 124
    if-eqz v0, :cond_0

    .line 125
    const-string v2, "param0"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 128
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_8_reset_gps()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    sget-boolean v0, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v0

    .line 137
    const/16 v1, 0x8

    .line 136
    invoke-virtual {v0, v1, v2, v2}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cmd_9_poweron_screen(I)I
    .locals 4
    .param p0, "on"    # I

    .prologue
    .line 147
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v1, "param0"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 151
    const/16 v2, 0x9

    const/4 v3, 0x0

    .line 150
    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 153
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static testJni()I
    .locals 5

    .prologue
    .line 11
    const/4 v2, 0x0

    .line 12
    .local v2, "result":I
    sget-boolean v3, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    if-eqz v3, :cond_0

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .local v0, "inparam":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .local v1, "outparam":Landroid/os/Bundle;
    const-string v3, "test_param"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v3, v4, v0, v1}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 18
    if-eqz v1, :cond_0

    .line 19
    const-string v3, "test_param"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    .line 22
    .end local v0    # "inparam":Landroid/os/Bundle;
    .end local v1    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v2
.end method
