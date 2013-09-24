.class public Lcom/umeng/analytics/f;
.super Ljava/lang/Object;
.source "UmengAnalyticsConstants.java"


# static fields
.field public static final A:Ljava/lang/String; = "umeng_net_report_policy"

.field public static final B:Ljava/lang/String; = "umeng_net_report_interval"

.field public static final C:Ljava/lang/String; = "umeng_last_config_time"

.field public static final D:Ljava/lang/String; = "umeng_local_report_policy"

.field public static final E:Ljava/lang/String; = "umeng_local_report_interval"

.field public static final F:Ljava/lang/String; = "last_report_time"

.field public static final G:Ljava/lang/String; = "report_interval"

.field public static final H:Ljava/lang/String; = "req_time"

.field public static final a:Ljava/lang/String; = "Android"

.field public static final b:Ljava/lang/String; = "Android"

.field public static final c:Ljava/lang/String; = "4.6.2"

.field static d:J = 0x0L

.field static final e:I = 0x8

.field static final f:I = 0xa

.field public static g:J = 0x0L

.field public static h:I = 0x0

.field public static i:Z = false

.field public static j:Z = false

.field static k:Z = false

.field static l:Z = false

.field static m:Z = false

.field static final n:Ljava/lang/String; = "last_send_time"

.field static final o:Ljava/lang/String; = "cache_version"

.field static final p:Ljava/lang/Object; = null

.field public static final q:Ljava/lang/String; = "MobclickAgent"

.field static final r:[Ljava/lang/String; = null

.field public static final s:[Ljava/lang/String; = null

.field static t:Z = false

.field static final u:Ljava/lang/String; = "age"

.field static final v:Ljava/lang/String; = "gender"

.field static final w:Ljava/lang/String; = "user_id"

.field static final x:Ljava/lang/String; = "id_source"

.field static final y:Ljava/lang/String; = "traffics_up"

.field static final z:Ljava/lang/String; = "traffics_down"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 13
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/umeng/analytics/f;->d:J

    .line 19
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/umeng/analytics/f;->g:J

    .line 20
    const/16 v0, 0x2710

    sput v0, Lcom/umeng/analytics/f;->h:I

    .line 22
    sput-boolean v2, Lcom/umeng/analytics/f;->i:Z

    .line 23
    sput-boolean v2, Lcom/umeng/analytics/f;->j:Z

    .line 25
    sput-boolean v2, Lcom/umeng/analytics/f;->k:Z

    .line 26
    sput-boolean v2, Lcom/umeng/analytics/f;->l:Z

    .line 27
    sput-boolean v2, Lcom/umeng/analytics/f;->m:Z

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/f;->p:Ljava/lang/Object;

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://alog.umeng.com/app_logs"

    aput-object v1, v0, v3

    const-string v1, "http://alog.umeng.co/app_logs"

    aput-object v1, v0, v2

    sput-object v0, Lcom/umeng/analytics/f;->r:[Ljava/lang/String;

    .line 35
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://oc.umeng.com/check_config_update"

    aput-object v1, v0, v3

    const-string v1, "http://oc.umeng.co/check_config_update"

    aput-object v1, v0, v2

    sput-object v0, Lcom/umeng/analytics/f;->s:[Ljava/lang/String;

    .line 37
    sput-boolean v2, Lcom/umeng/analytics/f;->t:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
