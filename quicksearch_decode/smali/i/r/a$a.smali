.class public Li/r/a$a;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/r/a$a$a;
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/String;

.field public static c:Ljava/lang/StringBuilder;

.field public static volatile d:Z

.field public static volatile e:Z

.field public static volatile f:Z

.field public static volatile g:Ljava/lang/String;

.field public static h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static i:Li/r/a$a$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "timezoneType"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    const-string v0, "timezoneInstances"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    const-string v0, "key"

    const-string v1, "value"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li/r/a$a;->b:[Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Li/r/a$a;->c:Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Li/r/a$a;->c:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Li/r/a$a;->d:Z

    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Li/r/a$a;->e:Z

    .line 8
    sput-boolean v0, Li/r/a$a;->f:Z

    .line 9
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li/r/a$a;->g:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Li/r/a$a;->h:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/r/a$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Li/r/a$a;)Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Li/r/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Li/r/a$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a()Ljava/util/HashSet;
    .locals 1

    .line 1
    sget-object v0, Li/r/a$a;->h:Ljava/util/HashSet;

    return-object v0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Li/r/a$a;->e:Z

    return p0
.end method

.method public static synthetic b()Z
    .locals 1

    .line 2
    sget-boolean v0, Li/r/a$a;->f:Z

    return v0
.end method

.method public static synthetic b(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Li/r/a$a;->d:Z

    return p0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Li/r/a$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Li/r/a$a;->f:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 9

    .line 5
    sget-object v0, Li/r/a$a;->h:Ljava/util/HashSet;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-boolean v1, Li/r/a$a;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 7
    sput-boolean v1, Li/r/a$a;->e:Z

    const/4 v1, 0x0

    .line 8
    sput-boolean v1, Li/r/a$a;->d:Z

    .line 9
    iget-object v2, p0, Li/r/a$a;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Li/r/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "preferences_home_tz_enabled"

    .line 10
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Li/r/a$a;->f:Z

    const-string v1, "preferences_home_tz"

    .line 11
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Li/r/a$a;->g:Ljava/lang/String;

    .line 13
    sget-object v1, Li/r/a$a;->i:Li/r/a$a$a;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Li/r/a$a$a;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Li/r/a$a$a;-><init>(Li/r/a$a;Landroid/content/ContentResolver;)V

    sput-object v1, Li/r/a$a;->i:Li/r/a$a$a;

    .line 16
    :cond_0
    sget-object v1, Li/r/a$a;->i:Li/r/a$a$a;

    const/4 v2, 0x0

    sget-object v4, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v5, Li/r/a$a;->b:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    sget-boolean p1, Li/r/a$a;->e:Z

    if-eqz p1, :cond_2

    .line 18
    sget-object p1, Li/r/a$a;->h:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-boolean p1, Li/r/a$a;->f:Z

    if-eqz p1, :cond_3

    sget-object p1, Li/r/a$a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
