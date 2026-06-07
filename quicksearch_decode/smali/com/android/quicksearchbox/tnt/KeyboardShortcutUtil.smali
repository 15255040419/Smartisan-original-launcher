.class public final Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;
.super Ljava/lang/Object;
.source "KeyboardShortcutUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;
    }
.end annotation


# static fields
.field public static final a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

.field public static b:I

.field public static c:J

.field public static d:Ljava/lang/String;

.field public static e:I

.field public static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static h:I

.field public static i:J

.field public static j:Z

.field public static final k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-direct {v0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;-><init>()V

    sput-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    .line 2
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    const/4 v0, -0x1

    .line 3
    sput v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b:I

    const-string v1, ""

    .line 4
    sput-object v1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->d:Ljava/lang/String;

    .line 5
    sput v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->e:I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3b

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x3c

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x71

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x72

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x39

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x3a

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x75

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x76

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Ld/k/y;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->f:Ljava/util/Set;

    const-string v1, "Alt+1"

    const-string v2, "Alt+2"

    const-string v3, "Alt+3"

    const-string v4, "Alt+4"

    const-string v5, "Alt+5"

    const-string v6, "Alt+6"

    const-string v7, "Alt+7"

    const-string v8, "Alt+8"

    const-string v9, "Alt+9"

    const-string v10, "Option+1"

    const-string v11, "Option+2"

    const-string v12, "Option+3"

    const-string v13, "Option+4"

    const-string v14, "Option+5"

    const-string v15, "Option+6"

    const-string v16, "Option+7"

    const-string v17, "Option+8"

    const-string v18, "Option+9"

    const-string v19, "Win+1"

    const-string v20, "Win+2"

    const-string v21, "Win+3"

    const-string v22, "Win+4"

    const-string v23, "Win+5"

    const-string v24, "Win+6"

    const-string v25, "Win+7"

    const-string v26, "Win+8"

    const-string v27, "Win+9"

    const-string v28, "Cmd+1"

    const-string v29, "Cmd+2"

    const-string v30, "Cmd+3"

    const-string v31, "Cmd+4"

    const-string v32, "Cmd+5"

    const-string v33, "Cmd+6"

    const-string v34, "Cmd+7"

    const-string v35, "Cmd+8"

    const-string v36, "Cmd+9"

    .line 15
    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Ld/k/y;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->g:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "+"

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Ld/v/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 4

    .line 2
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    const-string v1, "context"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "keyboard_preference"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 3
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a(Z)V

    .line 4
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_key_start_global_search"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "META_META_ON+KEYCODE_SPACE$KEYCODE_ALT_LEFT+KEYCODE_ALT_LEFT"

    :goto_0
    sput-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 47
    sput-boolean p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->j:Z

    return-void
.end method

.method public final a(I)Z
    .locals 8

    .line 48
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x77

    const/16 v3, 0x3a

    const/16 v4, 0x39

    const/16 v5, 0x72

    const/4 v6, 0x1

    const/16 v7, 0x71

    if-eqz v0, :cond_0

    const/16 v0, 0x75

    if-eq p1, v0, :cond_1

    const/16 v0, 0x76

    if-eq p1, v0, :cond_1

    if-eq p1, v7, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_0
    if-eq p1, v7, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    :goto_0
    move v1, v6

    :cond_2
    return v1
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->c(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1f

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v2, :cond_1

    return v1

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/view/KeyEvent;Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;)Z
    .locals 11

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    .line 5
    invoke-interface {p2}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;->shouldListen()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    sput v1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b:I

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->i(Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;->onCancel(Ljava/util/List;)V

    return v0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    return v3

    .line 12
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a(I)Z

    move-result v2

    const-string v6, ""

    if-eqz v2, :cond_4

    .line 14
    sget v2, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b:I

    if-ne v2, v1, :cond_3

    sget-wide v7, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->c:J

    sub-long v7, v4, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-gez v2, :cond_3

    .line 15
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    move-object v1, v6

    const/4 v2, -0x1

    .line 17
    sput v2, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b:I

    .line 18
    sput-wide v4, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->c:J

    goto :goto_0

    :cond_4
    move-object v1, v6

    .line 19
    :goto_0
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    const/16 v4, 0x7e4

    const v5, 0x7f10019f

    if-eqz v2, :cond_e

    .line 20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-static {p1, v1}, Landroid/app/SmtPCUtils;->generateHotKeys(Landroid/view/KeyEvent;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 22
    invoke-static {}, Lsmartisanos/api/ToastSmt;->getInstance()Lsmartisanos/api/ToastSmt;

    move-result-object v1

    sget-object v2, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->j(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    invoke-virtual {p1, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0, v4}, Lsmartisanos/api/ToastSmt;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Landroid/widget/Toast;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 24
    invoke-interface {p2}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;->onFail()V

    return v3

    :cond_6
    const-string v6, "hot_key"

    .line 25
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    sget-object v6, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->f:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->i(Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;->onProgress(Ljava/util/List;)V

    :cond_7
    if-eqz v1, :cond_9

    .line 28
    invoke-static {v1}, Ld/v/m;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    move v6, v0

    goto :goto_3

    :cond_9
    :goto_2
    move v6, v3

    :goto_3
    if-eqz v6, :cond_a

    return v2

    .line 29
    :cond_a
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result v2

    invoke-static {p1, v2}, Landroid/app/SmtPCUtils;->shouldNotOK(Landroid/view/KeyEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 30
    invoke-static {}, Lsmartisanos/api/ToastSmt;->getInstance()Lsmartisanos/api/ToastSmt;

    move-result-object v1

    sget-object v2, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->j(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    invoke-virtual {p1, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0, v4}, Lsmartisanos/api/ToastSmt;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Landroid/widget/Toast;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 32
    invoke-interface {p2}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;->onFail()V

    return v3

    :cond_b
    const/4 v2, 0x2

    const/4 v6, 0x0

    const-string v7, "+"

    .line 33
    invoke-static {v1, v7, v0, v2, v6}, Ld/v/m;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v1, :cond_c

    const-string v7, "NUMPAD_ADD"

    invoke-static {v1, v2, v6, v7}, Ld/v/n;->a(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_c
    new-instance p1, Ld/h;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, p2}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_4
    move-object v6, v1

    .line 35
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    sput p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->e:I

    .line 36
    invoke-virtual {p0, v6}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    :cond_e
    sget-object p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->g:Ljava/util/Set;

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result p1

    const-string v2, "custom_key_start_global_search"

    invoke-static {v6, v2, p1}, Landroid/app/SmtPCUtils;->isCurrentKeyConflict(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_5

    .line 38
    :cond_f
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->i(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;->onSuccess(Ljava/util/List;)V

    goto :goto_6

    .line 40
    :cond_10
    :goto_5
    invoke-static {}, Lsmartisanos/api/ToastSmt;->getInstance()Lsmartisanos/api/ToastSmt;

    move-result-object p1

    sget-object v1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    invoke-virtual {v6, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0, v4}, Lsmartisanos/api/ToastSmt;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Landroid/widget/Toast;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 42
    invoke-interface {p2}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;->onFail()V

    :goto_6
    return v3

    :cond_11
    :goto_7
    return v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x71

    const-string v1, "/"

    const-string v2, "-"

    const-string v3, "."

    if-eq p1, v0, :cond_2

    const/16 v0, 0x72

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const-string p1, "NONE"

    return-object p1

    :pswitch_0
    const-string v1, "+"

    goto :goto_0

    :pswitch_1
    const-string v1, "*"

    goto :goto_0

    :pswitch_2
    const-string v1, "Fn"

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v1, "Cmd"

    goto :goto_0

    :cond_0
    const-string v1, "Win"

    goto :goto_0

    :pswitch_4
    const-string v1, "\'"

    goto :goto_0

    :pswitch_5
    const-string v1, ";"

    goto :goto_0

    :pswitch_6
    const-string v1, "\\"

    goto :goto_0

    :pswitch_7
    const-string v1, "]"

    goto :goto_0

    :pswitch_8
    const-string v1, "["

    goto :goto_0

    :pswitch_9
    const-string v1, "="

    goto :goto_0

    :pswitch_a
    move-object v1, v2

    goto :goto_0

    :pswitch_b
    const-string v1, "`"

    goto :goto_0

    .line 9
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v1, "Option"

    goto :goto_0

    :cond_1
    const-string v1, "Alt"

    goto :goto_0

    :pswitch_d
    move-object v1, v3

    goto :goto_0

    :pswitch_e
    const-string v1, ","

    goto :goto_0

    :cond_2
    const-string v1, "Ctrl"

    :goto_0
    :pswitch_f
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x75
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9a
        :pswitch_f
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ld/v/m;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    goto :goto_5

    .line 2
    :cond_2
    sget-object p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    const-string v2, "context"

    invoke-static {p1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "custom_key_start_global_search"

    invoke-static {p1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-static {p1}, Ld/v/m;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v1

    :goto_3
    if-eqz v2, :cond_5

    const-string p1, "META_META_ON+KEYCODE_SPACE$KEYCODE_ALT_LEFT+KEYCODE_ALT_LEFT"

    :cond_5
    move-object v2, p1

    const-string p1, "$"

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ld/v/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    check-cast p1, Ljava/lang/String;

    .line 6
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 7
    sget-boolean v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->j:Z

    return v0
.end method

.method public final b(Landroid/view/KeyEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->c(Landroid/view/KeyEvent;)Z

    move-result v0

    const/16 v1, 0xa0

    const/4 v2, 0x1

    const/16 v3, 0x42

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/high16 v4, 0x10000

    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v1, :cond_3

    :cond_0
    return v2

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v1, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v1, "_"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    .line 4
    invoke-static/range {v0 .. v5}, Ld/v/n;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MOVE_HOME"

    .line 5
    invoke-static {v0, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "ENTER"

    const-string v3, "SPACE"

    if-eqz v0, :cond_0

    const-string p1, "Home"

    goto/16 :goto_0

    :cond_0
    const-string v0, "MOVE_END"

    .line 6
    invoke-static {v0, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "End"

    goto :goto_0

    :cond_1
    const-string v0, "PAGE_UP"

    .line 7
    invoke-static {v0, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "PageUp"

    goto :goto_0

    :cond_2
    const-string v0, "PAGE_DOWN"

    .line 8
    invoke-static {v0, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "PageDown"

    goto :goto_0

    :cond_3
    const-string v0, "DPAD_UP"

    .line 9
    invoke-static {v0, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "\u2191"

    goto :goto_0

    :cond_4
    const-string v0, "DPAD_DOWN"

    .line 10
    invoke-static {v0, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "\u2193"

    goto :goto_0

    :cond_5
    const-string v0, "DPAD_LEFT"

    .line 11
    invoke-static {v0, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "\u2190"

    goto :goto_0

    :cond_6
    const-string v0, "DPAD_RIGHT"

    .line 12
    invoke-static {v0, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "\u2192"

    goto :goto_0

    :cond_7
    const-string v0, "SYSRQ"

    .line 13
    invoke-static {v0, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "PrintScreen"

    goto :goto_0

    .line 14
    :cond_8
    invoke-static {v3, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object p1, v3

    goto :goto_0

    .line 15
    :cond_9
    invoke-static {v2, p1, v1}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object p1, v2

    :cond_a
    :goto_0
    return-object p1

    .line 16
    :cond_b
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    const-string v1, "context"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_key_start_global_search"

    const-string v2, "META_META_ON+KEYCODE_SPACE$KEYCODE_ALT_LEFT+KEYCODE_ALT_LEFT"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "KEYCODE_"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v0, v1, v2, v3}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    .line 11
    invoke-static {v1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final d(Landroid/view/KeyEvent;)Z
    .locals 9

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    const-string v1, "context"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_key_start_global_search"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Ld/v/m;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    const-string v0, "META_META_ON+KEYCODE_SPACE$KEYCODE_ALT_LEFT+KEYCODE_ALT_LEFT"

    :cond_2
    move-object v3, v0

    const-string v0, "$"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ld/v/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->c(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->h(Landroid/view/KeyEvent;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    const-string v1, "Home"

    .line 28
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "NUMPAD_SUBTRACT"

    const-string v3, "NUMPAD_DIVIDE"

    const-string v4, "NUMPAD_DOT"

    if-eqz v1, :cond_0

    const-string p1, "MOVE_HOME"

    goto/16 :goto_3

    :cond_0
    const-string v1, "End"

    .line 29
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "MOVE_END"

    goto/16 :goto_3

    :cond_1
    const-string v1, "PageUp"

    .line 30
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "PAGE_UP"

    goto/16 :goto_3

    :cond_2
    const-string v1, "PageDown"

    .line 31
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "PAGE_DOWN"

    goto/16 :goto_3

    :cond_3
    const-string v1, "\u2191"

    .line 32
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "DPAD_UP"

    goto/16 :goto_3

    :cond_4
    const-string v1, "\u2193"

    .line 33
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "DPAD_DOWN"

    goto/16 :goto_3

    :cond_5
    const-string v1, "\u2190"

    .line 34
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "DPAD_LEFT"

    goto/16 :goto_3

    :cond_6
    const-string v1, "\u2192"

    .line 35
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "DPAD_RIGHT"

    goto/16 :goto_3

    :cond_7
    const-string v1, "PrintScreen"

    .line 36
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p1, "SYSRQ"

    goto/16 :goto_3

    :cond_8
    const-string v1, ","

    .line 37
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "COMMA"

    goto/16 :goto_3

    :cond_9
    const-string v1, "."

    .line 38
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 39
    sget p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->e:I

    const/16 v0, 0x9e

    if-ne p1, v0, :cond_a

    goto/16 :goto_2

    :cond_a
    const-string p1, "PERIOD"

    goto/16 :goto_3

    :cond_b
    const-string v5, "/"

    .line 40
    invoke-static {v5, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 41
    sget p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->e:I

    const/16 v0, 0x9a

    if-ne p1, v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const-string p1, "SLASH"

    goto/16 :goto_3

    :cond_d
    const-string v6, "`"

    .line 42
    invoke-static {v6, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string p1, "GRAVE"

    goto/16 :goto_3

    :cond_e
    const-string v6, "\\"

    .line 43
    invoke-static {v6, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string p1, "BACKSLASH"

    goto/16 :goto_3

    :cond_f
    const-string v6, ";"

    .line 44
    invoke-static {v6, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string p1, "SEMICOLON"

    goto/16 :goto_3

    :cond_10
    const-string v6, "\'"

    .line 45
    invoke-static {v6, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string p1, "APOSTROPHE"

    goto :goto_3

    :cond_11
    const-string v6, "="

    .line 46
    invoke-static {v6, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string p1, "EQUALS"

    goto :goto_3

    :cond_12
    const-string v6, "-"

    .line 47
    invoke-static {v6, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 48
    sget p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->e:I

    const/16 v0, 0x9c

    if-ne p1, v0, :cond_13

    goto :goto_1

    :cond_13
    const-string p1, "MINUS"

    goto :goto_3

    :cond_14
    const-string v7, "["

    .line 49
    invoke-static {v7, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_15

    const-string p1, "LEFT_BRACKET"

    goto :goto_3

    :cond_15
    const-string v7, "]"

    .line 50
    invoke-static {v7, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string p1, "RIGHT_BRACKET"

    goto :goto_3

    .line 51
    :cond_16
    invoke-static {v5, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_17

    :goto_0
    move-object p1, v3

    goto :goto_3

    :cond_17
    const-string v3, "*"

    .line 52
    invoke-static {v3, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string p1, "NUMPAD_MULTIPLY"

    goto :goto_3

    .line 53
    :cond_18
    invoke-static {v6, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_19

    :goto_1
    move-object p1, v2

    goto :goto_3

    .line 54
    :cond_19
    invoke-static {v1, p1, v0}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_2
    move-object p1, v4

    .line 55
    :cond_1a
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYCODE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/view/KeyEvent;)Z
    .locals 9

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    const-string v1, "context"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_key_start_global_search"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Ld/v/m;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    const-string v0, "META_META_ON+KEYCODE_SPACE$KEYCODE_ALT_LEFT+KEYCODE_ALT_LEFT"

    :cond_2
    move-object v3, v0

    const-string v0, "$"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ld/v/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a(I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sget v5, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->h:I

    if-ne v4, v5, :cond_11

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->i:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_11

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x72

    const/16 v6, 0x71

    const-string v7, "+"

    if-eq v4, v6, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v5, :cond_5

    goto/16 :goto_4

    .line 10
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x3a

    const/16 v6, 0x39

    if-eq v4, v6, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v5, :cond_6

    goto :goto_3

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x76

    const/16 v6, 0x75

    if-eq v4, v6, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v5, :cond_a

    .line 12
    :cond_7
    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 14
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    return v1

    .line 16
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 17
    :cond_b
    :goto_3
    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 19
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    move v1, v2

    :cond_d
    return v1

    .line 21
    :cond_e
    :goto_4
    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 23
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    move v1, v2

    :cond_10
    return v1

    .line 25
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_12

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->i:J

    .line 27
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    sput p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->h:I

    :cond_12
    return v1
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    const-string v0, "+"

    .line 8
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Ld/v/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v13, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$a;->b:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$a;

    const-string v8, "+"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1e

    const/4 v15, 0x0

    invoke-static/range {v7 .. v15}, Ld/k/o;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Landroid/view/KeyEvent;)Z
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    const-string v1, "context"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_key_screen_shot"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    const-string v1, "$"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ld/v/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->c(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->h(Landroid/view/KeyEvent;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "META_META_ON+META_SHIFT_ON+KEYCODE_4"

    .line 6
    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "META_SHIFT_ON+META_META_ON+KEYCODE_4"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "Shift"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "META_SHIFT_ON"

    goto :goto_3

    :sswitch_1
    const-string v0, "Ctrl"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "META_CTRL_ON"

    goto :goto_3

    :sswitch_2
    const-string v0, "Win"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v0, "Cmd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const-string p1, "META_META_ON"

    goto :goto_3

    :sswitch_4
    const-string v0, "Alt"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_5
    const-string v0, "Option"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    const-string p1, "META_ALT_ON"

    goto :goto_3

    .line 13
    :cond_0
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72d08b6b -> :sswitch_5
        0x10189 -> :sswitch_4
        0x1091a -> :sswitch_3
        0x153bc -> :sswitch_2
        0x20368b -> :sswitch_1
        0x4c27c62 -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(Landroid/view/KeyEvent;)Z
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    const-string v1, "context"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_key_screen_shot_full"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    const-string v1, "$"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ld/v/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->c(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->h(Landroid/view/KeyEvent;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "META_META_ON+META_SHIFT_ON+KEYCODE_3"

    .line 6
    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "META_SHIFT_ON+META_META_ON+KEYCODE_3"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "META_ALT"

    .line 11
    invoke-static {p1, v3, v2, v1, v0}, Ld/v/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Option"

    goto :goto_0

    :cond_0
    const-string p1, "Alt"

    goto :goto_0

    :cond_1
    const-string v3, "META_SHIFT"

    .line 12
    invoke-static {p1, v3, v2, v1, v0}, Ld/v/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "Shift"

    goto :goto_0

    :cond_2
    const-string v3, "META_CTRL"

    .line 13
    invoke-static {p1, v3, v2, v1, v0}, Ld/v/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "Ctrl"

    goto :goto_0

    :cond_3
    const-string v3, "META_META"

    .line 14
    invoke-static {p1, v3, v2, v1, v0}, Ld/v/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Cmd"

    goto :goto_0

    :cond_4
    const-string p1, "Win"

    :cond_5
    :goto_0
    return-object p1
.end method

.method public final h(Landroid/view/KeyEvent;)Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const-string v2, "+"

    if-eqz v1, :cond_0

    const-string v1, "META_SHIFT_ON"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    const-string v1, "META_CTRL_ON"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const-string v1, "META_ALT_ON"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    const-string v1, "META_META_ON"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "keyEventResult.append(Ke\u2026eToString(event.keyCode))"

    invoke-static {v0, p1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i(Landroid/view/KeyEvent;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string v1, "Shift"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    const-string v1, "Ctrl"

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Option"

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "Alt"

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    const-string v3, "Win"

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Cmd"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_6

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->d:Ljava/lang/String;

    const-string v6, "$"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ld/v/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    sput-object p1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->d:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    const-string v1, "context"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_key_start_global_search"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final j(Landroid/view/KeyEvent;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const-string v2, "+"

    if-eqz v1, :cond_0

    const-string v1, "Shift"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    const-string v1, "Ctrl"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Option"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "Alt"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Cmd"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "Win"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyEvent.keyCodeToString(event.keyCode)"

    invoke-static {p1, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "keyLabel.append(parseKey\u2026ent.keyCode))).toString()"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
