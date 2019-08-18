.class public Lcom/syu/util/FuncUtils;
.super Ljava/lang/Object;
.source "FuncUtils.java"


# static fields
.field private static LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastClickTime:J

.field private static mCalendar:Ljava/util/Calendar;

.field private static mClockFormat:Ljava/text/SimpleDateFormat;

.field private static mCurMillis:J

.field private static mIsDelay:Z

.field private static mLastMillis:J

.field public static mTypeFaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    .line 42
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ar"

    const-string v2, "ISO-8859-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "be"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "bg"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ca"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "cs"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "da"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "de"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "el"

    const-string v2, "ISO-8859-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "es"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "et"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "fi"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "fr"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "hr"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "hu"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "is"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "it"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "iw"

    const-string v2, "ISO-8859-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ja"

    const-string v2, "Shift_JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ko"

    const-string v2, "EUC-KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "lt"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "lv"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "mk"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "nl"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "no"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "pl"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "pt"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ro"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ru"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sh"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sk"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sl"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sq"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sr"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sv"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "tr"

    const-string v2, "ISO-8859-9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "uk"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/util/FuncUtils;->mIsDelay:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/syu/util/FuncUtils;->mTypeFaces:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-instance v0, Lcom/syu/util/FuncUtils$1;

    invoke-direct {v0, p0}, Lcom/syu/util/FuncUtils$1;-><init>(Lcom/syu/util/FuncUtils;)V

    iput-object v0, p0, Lcom/syu/util/FuncUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    return-void
.end method

.method public static FormatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 323
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static String2ByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "strCommand"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 184
    .local v0, "bCommand":[B
    const/4 v1, 0x0

    .line 185
    .local v1, "heightData":B
    const/4 v3, 0x0

    .line 186
    .local v3, "lowData":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 193
    return-object v0

    .line 187
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/syu/util/FuncUtils;->char20xByte(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v1, v4

    .line 188
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/syu/util/FuncUtils;->char20xByte(C)B

    move-result v3

    .line 189
    div-int/lit8 v4, v2, 0x2

    or-int v5, v1, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 190
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method static synthetic access$0(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 92
    sput-object p0, Lcom/syu/util/FuncUtils;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/syu/util/FuncUtils;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/syu/util/FuncUtils;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public static byte2int(B)I
    .locals 2
    .param p0, "data"    # B

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "iDest":I
    and-int/lit16 v1, p0, 0x80

    if-nez v1, :cond_0

    .line 174
    move v0, p0

    .line 179
    :goto_0
    return v0

    .line 176
    :cond_0
    and-int/lit16 v0, p0, 0xff

    goto :goto_0
.end method

.method public static byteArray2String([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 144
    const-string v3, ""

    .line 145
    .local v3, "strByte":Ljava/lang/String;
    const/4 v0, 0x0

    .line 146
    .local v0, "heightData":I
    const/4 v2, 0x0

    .line 147
    .local v2, "lowData":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_0

    .line 153
    return-object v3

    .line 148
    :cond_0
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xf0

    div-int/lit8 v0, v4, 0x10

    .line 149
    aget-byte v4, p0, v1

    and-int/lit8 v2, v4, 0xf

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/syu/util/FuncUtils;->intTo0xChar(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/syu/util/FuncUtils;->intTo0xChar(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static char20xByte(C)B
    .locals 2
    .param p0, "cSrc"    # C

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "bDest":B
    const/16 v1, 0x30

    if-gt v1, p0, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 199
    add-int/lit8 v1, p0, -0x30

    int-to-byte v0, v1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    const/16 v1, 0x61

    if-gt v1, p0, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    .line 201
    add-int/lit8 v1, p0, -0x61

    add-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    goto :goto_0

    .line 202
    :cond_2
    const/16 v1, 0x41

    if-gt v1, p0, :cond_0

    const/16 v1, 0x46

    if-gt p0, v1, :cond_0

    .line 203
    add-int/lit8 v1, p0, -0x41

    add-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    goto :goto_0
.end method

.method public static check([II)Z
    .locals 2
    .param p0, "ints"    # [I
    .param p1, "index"    # I

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "bRet":Z
    if-eqz p0, :cond_0

    .line 471
    array-length v1, p0

    if-le v1, p1, :cond_1

    const/4 v0, 0x1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 471
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static check([Ljava/lang/Object;I)Z
    .locals 2
    .param p0, "objs"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "bRet":Z
    if-eqz p0, :cond_0

    .line 479
    array-length v1, p0

    if-le v1, p1, :cond_1

    const/4 v0, 0x1

    .line 481
    :cond_0
    :goto_0
    return v0

    .line 479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkFilter(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "strFilters"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 679
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v1

    .line 682
    :cond_1
    if-eqz p1, :cond_0

    .line 683
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 684
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 685
    const/4 v1, 0x1

    goto :goto_0

    .line 683
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static delayIsDone(I)Z
    .locals 6
    .param p0, "delay"    # I

    .prologue
    const/4 v0, 0x1

    .line 103
    sget-boolean v1, Lcom/syu/util/FuncUtils;->mIsDelay:Z

    if-nez v1, :cond_0

    .line 112
    :goto_0
    return v0

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/syu/util/FuncUtils;->mCurMillis:J

    .line 107
    sget-wide v2, Lcom/syu/util/FuncUtils;->mCurMillis:J

    sget-wide v4, Lcom/syu/util/FuncUtils;->mLastMillis:J

    sub-long/2addr v2, v4

    int-to-long v4, p0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 108
    sget-wide v2, Lcom/syu/util/FuncUtils;->mCurMillis:J

    sput-wide v2, Lcom/syu/util/FuncUtils;->mLastMillis:J

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 14
    .param p0, "duration"    # J

    .prologue
    const-wide/16 v10, 0x3c

    .line 395
    const-wide/16 v8, 0x3e8

    div-long v6, p0, v8

    .line 396
    .local v6, "time":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 397
    const-string v8, "00:00:00"

    .line 402
    :goto_0
    return-object v8

    .line 399
    :cond_0
    div-long v8, v6, v10

    rem-long v2, v8, v10

    .line 400
    .local v2, "min":J
    div-long v8, v6, v10

    div-long v0, v8, v10

    .line 401
    .local v0, "hour":J
    rem-long v4, v6, v10

    .line 402
    .local v4, "second":J
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static formatDuration_Sec(J)Ljava/lang/String;
    .locals 14
    .param p0, "duration"    # J

    .prologue
    const-wide/16 v10, 0x3c

    .line 406
    move-wide v6, p0

    .line 407
    .local v6, "time":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 408
    const-string v8, "00:00:00"

    .line 413
    :goto_0
    return-object v8

    .line 410
    :cond_0
    div-long v8, v6, v10

    rem-long v2, v8, v10

    .line 411
    .local v2, "min":J
    div-long v8, v6, v10

    div-long v0, v8, v10

    .line 412
    .local v0, "hour":J
    rem-long v4, v6, v10

    .line 413
    .local v4, "second":J
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static formatHistoryTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    .line 329
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 330
    .local v2, "then":Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 331
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 332
    .local v1, "now":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 333
    const v0, 0x80b00

    .line 335
    .local v0, "format_flags":I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_0

    .line 336
    or-int/lit8 v0, v0, 0x14

    .line 345
    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 339
    :cond_0
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_1

    .line 340
    or-int/lit8 v0, v0, 0x10

    .line 342
    :cond_1
    or-int/lit16 v0, v0, 0x81

    goto :goto_0
.end method

.method public static get(Lcom/syu/ipc/ModuleObject;I)I
    .locals 2
    .param p0, "obj"    # Lcom/syu/ipc/ModuleObject;
    .param p1, "valueIfNotOk"    # I

    .prologue
    .line 653
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    const/4 v1, 0x0

    aget p1, v0, v1

    .line 656
    .end local p1    # "valueIfNotOk":I
    :cond_0
    return p1
.end method

.method public static get(Lcom/syu/ipc/ModuleObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Lcom/syu/ipc/ModuleObject;
    .param p1, "valueIfNotOk"    # Ljava/lang/String;

    .prologue
    .line 660
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p1, v0, v1

    .line 663
    .end local p1    # "valueIfNotOk":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static getAssetsBitmap(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "PhotoPath"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, "photo":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 250
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 251
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 256
    if-eqz v1, :cond_0

    .line 257
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 263
    :cond_0
    :goto_0
    return-object v2

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    if-eqz v1, :cond_0

    .line 257
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 258
    :catch_1
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 256
    if-eqz v1, :cond_1

    .line 257
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 261
    :cond_1
    :goto_1
    throw v3

    .line 258
    :catch_2
    move-exception v0

    .line 259
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 259
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAudioFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "strPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 631
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 633
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 634
    const-string v2, "oneshot"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    const-string v2, "configchange"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 637
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    return-object v0
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 485
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 486
    :cond_0
    const/4 v0, 0x0

    .line 499
    :goto_0
    return-object v0

    .line 492
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 489
    :goto_1
    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 495
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 496
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 497
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 493
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public static getBytes([C)[B
    .locals 4
    .param p0, "chars"    # [C

    .prologue
    .line 209
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 210
    .local v2, "cs":Ljava/nio/charset/Charset;
    array-length v3, p0

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 211
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 212
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v2, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 214
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public static getChars([B)[C
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 218
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 219
    .local v2, "cs":Ljava/nio/charset/Charset;
    array-length v3, p0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 220
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 222
    invoke-virtual {v2, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 223
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    return-object v3
.end method

.method public static getCharset(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 81
    sget-object v2, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 89
    .end local v0    # "charset":Ljava/lang/String;
    .local v1, "charset":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 85
    .end local v1    # "charset":Ljava/lang/String;
    .restart local v0    # "charset":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/syu/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "charset":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 86
    .restart local v0    # "charset":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 87
    const-string v0, "GB18030"

    :cond_1
    move-object v1, v0

    .line 89
    .end local v0    # "charset":Ljava/lang/String;
    .restart local v1    # "charset":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getCurrentTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "H:mm"

    .line 318
    .local v0, "formatTime":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 318
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 317
    .end local v0    # "formatTime":Ljava/lang/String;
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method public static getDateStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 547
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 548
    .local v3, "dir":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    .line 549
    .local v10, "runtime":Ljava/lang/Runtime;
    const/4 v9, 0x0

    .line 550
    .local v9, "proc":Ljava/lang/Process;
    const/4 v5, 0x0

    .line 551
    .local v5, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 552
    .local v6, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 554
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    const-string v11, "mount"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 555
    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 556
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .local v7, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 559
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 580
    if-eqz v1, :cond_1

    .line 581
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 587
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 588
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 594
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 595
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 601
    :cond_3
    :goto_3
    if-eqz v9, :cond_e

    .line 602
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 608
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :cond_4
    :goto_4
    return-object v3

    .line 560
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "line":Ljava/lang/String;
    :cond_5
    :try_start_7
    const-string v11, "secure"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 563
    const-string v11, "asec"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 566
    const-string v11, "fat"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 567
    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "columns":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v11, v2

    if-le v11, v13, :cond_0

    .line 569
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 570
    goto :goto_0

    .end local v2    # "columns":[Ljava/lang/String;
    :cond_6
    const-string v11, "fuse"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 571
    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 572
    .restart local v2    # "columns":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v11, v2

    if-le v11, v13, :cond_0

    .line 573
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v3

    goto/16 :goto_0

    .line 576
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v4

    .line 577
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 580
    if-eqz v0, :cond_7

    .line 581
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 587
    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    .line 588
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 594
    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 595
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 601
    :cond_9
    :goto_8
    if-eqz v9, :cond_4

    .line 602
    :try_start_c
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_4

    .line 603
    :catch_1
    move-exception v4

    .line 604
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 582
    :catch_2
    move-exception v4

    .line 583
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 589
    :catch_3
    move-exception v4

    .line 590
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 596
    :catch_4
    move-exception v4

    .line 597
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 578
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 580
    :goto_9
    if-eqz v0, :cond_a

    .line 581
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 587
    :cond_a
    :goto_a
    if-eqz v6, :cond_b

    .line 588
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 594
    :cond_b
    :goto_b
    if-eqz v5, :cond_c

    .line 595
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 601
    :cond_c
    :goto_c
    if-eqz v9, :cond_d

    .line 602
    :try_start_10
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 606
    :cond_d
    :goto_d
    throw v11

    .line 582
    :catch_5
    move-exception v4

    .line 583
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 589
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 590
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 596
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 597
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 603
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 604
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 582
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "line":Ljava/lang/String;
    :catch_9
    move-exception v4

    .line 583
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 589
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v4

    .line 590
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 596
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v4

    .line 597
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 603
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v4

    .line 604
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_e
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_4

    .line 578
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_9

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_9

    .line 576
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v4

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_e
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_5
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 227
    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "filename":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 230
    .local v1, "i":I
    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 231
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 233
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "i":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFileNameNoSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "strNameWithSuffix"    # Ljava/lang/String;

    .prologue
    .line 667
    const-string v1, " "

    .line 668
    .local v1, "strName":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    move-object v1, p0

    .line 670
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 671
    .local v0, "posDot":I
    if-ltz v0, :cond_0

    .line 672
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 675
    .end local v0    # "posDot":I
    :cond_0
    return-object v1
.end method

.method public static getFormatSize(D)Ljava/lang/String;
    .locals 16
    .param p0, "size"    # D

    .prologue
    .line 516
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v2, p0, v12

    .line 517
    .local v2, "kiloByte":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v2, v12

    if-gez v12, :cond_0

    .line 518
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "Byte(s)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 542
    :goto_0
    return-object v12

    .line 520
    :cond_0
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v4, v2, v12

    .line 521
    .local v4, "megaByte":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v4, v12

    if-gez v12, :cond_1

    .line 522
    new-instance v6, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 523
    .local v6, "result1":Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v6, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    .line 524
    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "KB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 523
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 527
    .end local v6    # "result1":Ljava/math/BigDecimal;
    :cond_1
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v0, v4, v12

    .line 528
    .local v0, "gigaByte":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v0, v12

    if-gez v12, :cond_2

    .line 529
    new-instance v7, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 530
    .local v7, "result2":Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v7, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    .line 531
    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 530
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 534
    .end local v7    # "result2":Ljava/math/BigDecimal;
    :cond_2
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v10, v0, v12

    .line 535
    .local v10, "teraBytes":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v10, v12

    if-gez v12, :cond_3

    .line 536
    new-instance v8, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 537
    .local v8, "result3":Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v8, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    .line 538
    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "GB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 537
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 541
    .end local v8    # "result3":Ljava/math/BigDecimal;
    :cond_3
    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    .line 542
    .local v9, "result4":Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v9, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    const-string v13, "TB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 542
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0
.end method

.method public static getNumSlash(Ljava/lang/String;)I
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, "iNumSlash":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "strArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 697
    array-length v0, v1

    .line 700
    .end local v1    # "strArray":[Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static getPhotoFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "strPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 642
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 644
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 645
    const-string v2, "oneshot"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    const-string v2, "configchange"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 648
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    return-object v0
.end method

.method public static getTimeUtil(ZLandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "isLocal"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    const-string v1, ""

    .line 301
    .local v1, "temp":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    if-eqz p0, :cond_1

    .line 303
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 304
    const/16 v3, 0x9

    .line 303
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    :cond_0
    :goto_0
    return-object v1

    .line 306
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "AM"

    :goto_1
    goto :goto_0

    .line 307
    :cond_2
    const-string v1, "PM"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTypefaceFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 281
    sget-object v2, Lcom/syu/util/FuncUtils;->mTypeFaces:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    sget-object v2, Lcom/syu/util/FuncUtils;->mTypeFaces:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 290
    :goto_0
    return-object v2

    .line 284
    :cond_0
    const/4 v1, 0x0

    .line 285
    .local v1, "typeface":Landroid/graphics/Typeface;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "fontFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 289
    :cond_1
    sget-object v2, Lcom/syu/util/FuncUtils;->mTypeFaces:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 290
    goto :goto_0
.end method

.method public static getUrlExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 239
    .local v0, "i":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 240
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 243
    .end local v0    # "i":I
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getVideoFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "strPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 620
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 622
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    const-string v2, "oneshot"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    const-string v2, "configchange"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 626
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    return-object v0
.end method

.method public static intTo0xChar(I)C
    .locals 2
    .param p0, "int0x"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "char0x":C
    if-ltz p0, :cond_0

    const/16 v1, 0xf

    if-le p0, v1, :cond_1

    .line 159
    :cond_0
    const/16 v1, 0x3f

    .line 168
    :goto_0
    return v1

    .line 162
    :cond_1
    const/16 v1, 0xa

    if-ge p0, v1, :cond_2

    .line 163
    add-int/lit8 v1, p0, 0x30

    int-to-char v0, v1

    :goto_1
    move v1, v0

    .line 168
    goto :goto_0

    .line 165
    :cond_2
    add-int/lit8 v1, p0, -0xa

    add-int/lit8 v1, v1, 0x61

    int-to-char v0, v1

    goto :goto_1
.end method

.method public static isAssetsFileExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 269
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "fonts":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 277
    .end local v1    # "fonts":[Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    const/4 v3, 0x0

    :goto_2
    return v3

    .line 271
    .restart local v1    # "fonts":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    const/4 v3, 0x1

    goto :goto_2

    .line 270
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "fonts":[Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "bRet":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 421
    :cond_0
    return v0
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    .local v0, "time":J
    sget-wide v4, Lcom/syu/util/FuncUtils;->lastClickTime:J

    sub-long v2, v0, v4

    .line 126
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x190

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 127
    const/4 v4, 0x1

    .line 130
    :goto_0
    return v4

    .line 129
    :cond_0
    sput-wide v0, Lcom/syu/util/FuncUtils;->lastClickTime:J

    .line 130
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isFastDoubleClick(I)Z
    .locals 6
    .param p0, "mills"    # I

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    .local v0, "time":J
    sget-wide v4, Lcom/syu/util/FuncUtils;->lastClickTime:J

    sub-long v2, v0, v4

    .line 136
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    int-to-long v4, p0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 137
    const/4 v4, 0x1

    .line 140
    :goto_0
    return v4

    .line 139
    :cond_0
    sput-wide v0, Lcom/syu/util/FuncUtils;->lastClickTime:J

    .line 140
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "strFile"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    const/4 v1, 0x0

    .line 616
    :goto_0
    return v1

    .line 615
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public static msFDuration(J)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # J

    .prologue
    const-wide/16 v8, 0xe10

    const-wide/16 v6, 0xa

    const-wide/16 v4, 0x3c

    .line 376
    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    .line 377
    const-string v0, ""

    .line 378
    .local v0, "str":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    .line 379
    const-string v0, "00:00"

    .line 391
    :goto_0
    return-object v0

    .line 380
    :cond_0
    cmp-long v1, p0, v4

    if-gez v1, :cond_2

    .line 381
    cmp-long v1, p0, v6

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00:0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 382
    :cond_2
    cmp-long v1, p0, v8

    if-gez v1, :cond_5

    .line 383
    rem-long v2, p0, v4

    cmp-long v1, v2, v6

    if-gez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-long v2, p0, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_2
    div-long v2, p0, v4

    cmp-long v1, v2, v6

    if-gez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long v2, p0, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :goto_3
    goto :goto_0

    .line 383
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-long v2, p0, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 384
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    div-long v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 386
    :cond_5
    rem-long v2, p0, v4

    cmp-long v1, v2, v6

    if-gez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-long v2, p0, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    :goto_4
    rem-long v2, p0, v8

    div-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-gez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-long v2, p0, v8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    div-long v2, p0, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 386
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-long v2, p0, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 387
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    rem-long v2, p0, v8

    .line 388
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static readStrFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    const/4 v7, 0x0

    .line 426
    .local v7, "strRet":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 427
    const/4 v2, 0x0

    .line 428
    .local v2, "isr":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 430
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .local v3, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 434
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 435
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "str":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 443
    if-eqz v5, :cond_0

    .line 444
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 450
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 451
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 457
    :cond_1
    :goto_2
    if-eqz p0, :cond_2

    .line 458
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 465
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    :goto_3
    return-object v7

    .line 436
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_3
    :try_start_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 439
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 440
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 443
    if-eqz v4, :cond_4

    .line 444
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 450
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 451
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 457
    :cond_5
    :goto_6
    if-eqz p0, :cond_2

    .line 458
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 459
    :catch_1
    move-exception v1

    .line 460
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 445
    :catch_2
    move-exception v1

    .line 446
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 452
    :catch_3
    move-exception v1

    .line 453
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 441
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 443
    :goto_7
    if-eqz v4, :cond_6

    .line 444
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 450
    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    .line 451
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 457
    :cond_7
    :goto_9
    if-eqz p0, :cond_8

    .line 458
    :try_start_d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 462
    :cond_8
    :goto_a
    throw v8

    .line 445
    :catch_4
    move-exception v1

    .line 446
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 453
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 459
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 460
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 445
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "str":Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 446
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .line 453
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 459
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v1

    .line 460
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 441
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    goto :goto_7

    .line 439
    :catch_a
    move-exception v1

    goto :goto_4

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4
.end method

.method public static sFDuration(I)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # I

    .prologue
    const/16 v6, 0xa

    .line 349
    if-gtz p0, :cond_0

    .line 350
    const-string v4, "00:00"

    .line 372
    :goto_0
    return-object v4

    .line 352
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v2, "sDest":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 354
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 355
    .local v1, "minute":I
    const/4 v3, 0x0

    .line 357
    .local v3, "second":I
    rem-int/lit8 v3, p0, 0x3c

    .line 358
    div-int/lit8 v4, p0, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 359
    div-int/lit8 v4, p0, 0x3c

    div-int/lit8 v4, v4, 0x3c

    rem-int/lit8 v0, v4, 0x3c

    .line 361
    if-lez v0, :cond_1

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    :cond_1
    if-ge v1, v6, :cond_2

    .line 365
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    if-ge v3, v6, :cond_3

    .line 369
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static sleep(I)V
    .locals 4
    .param p0, "mills"    # I

    .prologue
    .line 117
    int-to-long v2, p0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
