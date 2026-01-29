.class public Lcom/withsecure/example/sieve/activity/PWList;
.super Landroid/app/Activity;
.source "PWList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;


# static fields
.field public static final FOR_ACCESS:I = 0x28d

.field public static final FOR_EDIT:I = 0x1d4

.field public static final FOR_INSERT:I = 0x2df

.field private static final PWLIST_ADD:I = 0x1

.field private static final PWLIST_EDIT:I = 0x2

.field private static final PWLIST_SETTINGS:I = 0x3

.field public static final REQUEST_TYPE:Ljava/lang/String; = "com.withsecure.example.sieve.REQUEST_TYPE"

.field private static final TAG:Ljava/lang/String; = "m_PWList"


# instance fields
.field private MainPassword:Ljava/lang/String;

.field private adapter:Landroid/widget/SimpleCursorAdapter;

.field private connectionError:Landroid/app/AlertDialog$Builder;

.field private prompt:Landroid/widget/TextView;

.field private serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

.field private workingEntry:Lcom/withsecure/example/sieve/util/PasswordEntry;

.field private workingRow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->adapter:Landroid/widget/SimpleCursorAdapter;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingRow:I

    .line 49
    return-void
.end method

.method private addEntry()V
    .locals 3

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/AddEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.withsecure.example.sieve.REQUEST"

    const/16 v2, 0x110d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v1, "com.withsecure.example.sieve.REQUEST_TYPE"

    const/16 v2, 0x2df

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/withsecure/example/sieve/activity/PWList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    return-void
.end method

.method private deleteEntry(I)V
    .locals 5
    .param p1, "id"    # I

    .line 86
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PWList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/withsecure/example/sieve/provider/DBContentProvider;->PASSWORDS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_id = ?"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PWList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Entry deleted"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/PWList;->populateList()V

    .line 89
    return-void
.end method

.method private finaliseEntry([BI)Z
    .locals 2
    .param p1, "encryptedString"    # [B
    .param p2, "code"    # I

    .line 112
    sparse-switch p2, :sswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unrecognised MSG_TYPE for finalisedEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m_PWList"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    return v0

    .line 117
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/withsecure/example/sieve/activity/PWList;->finaliseInsert([B)Z

    move-result v0

    return v0

    .line 114
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/withsecure/example/sieve/activity/PWList;->finaliseUpdate([B)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1d4 -> :sswitch_1
        0x2df -> :sswitch_0
    .end sparse-switch
.end method

.method private finaliseInsert([B)Z
    .locals 3
    .param p1, "encryptedString"    # [B

    .line 127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v0, "out":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingEntry:Lcom/withsecure/example/sieve/util/PasswordEntry;

    iget-object v1, v1, Lcom/withsecure/example/sieve/util/PasswordEntry;->service:Ljava/lang/String;

    const-string/jumbo v2, "service"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingEntry:Lcom/withsecure/example/sieve/util/PasswordEntry;

    iget-object v1, v1, Lcom/withsecure/example/sieve/util/PasswordEntry;->username:Ljava/lang/String;

    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 131
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingEntry:Lcom/withsecure/example/sieve/util/PasswordEntry;

    iget-object v1, v1, Lcom/withsecure/example/sieve/util/PasswordEntry;->email:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PWList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/withsecure/example/sieve/provider/DBContentProvider;->PASSWORDS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private finaliseUpdate([B)Z
    .locals 6
    .param p1, "encryptedString"    # [B

    .line 136
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    iget v2, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingRow:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 137
    .local v1, "arr_s":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PWList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/withsecure/example/sieve/provider/DBContentProvider;->PASSWORDS_URI:Landroid/net/Uri;

    const-string v5, "_id = ?"

    invoke-virtual {v2, v4, v5, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/withsecure/example/sieve/activity/PWList;->finaliseInsert([B)Z

    move-result v0

    return v0

    .line 141
    :cond_0
    const-string v0, "m_PWList"

    const-string v2, "failed to delete entry from database"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v3
.end method

.method static synthetic lambda$onCreate$2(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 207
    return-void
.end method

.method private openSettings()V
    .locals 2

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/withsecure/example/sieve/activity/PWList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 244
    return-void
.end method

.method private populateList()V
    .locals 8

    .line 247
    new-instance v7, Landroid/content/CursorLoader;

    sget-object v2, Lcom/withsecure/example/sieve/provider/DBContentProvider;->PASSWORDS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "service"

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 248
    .local v0, "cursor0":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->adapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 249
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->prompt:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->prompt:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    return-void
.end method

.method private unbind()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PWList;->unbindService(Landroid/content/ServiceConnection;)V

    .line 264
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/PWList;->populateList()V

    .line 61
    return-void
.end method

.method public decryptionReturned(Ljava/lang/String;I)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 65
    sparse-switch p2, :sswitch_data_0

    .line 83
    return-void

    .line 76
    :sswitch_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PWList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "Password"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 77
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PWList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Password Copied to clipboard"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    return-void

    .line 67
    :sswitch_1
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingEntry:Lcom/withsecure/example/sieve/util/PasswordEntry;

    iput-object p1, v0, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/AddEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.withsecure.example.sieve.ENTRY"

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingEntry:Lcom/withsecure/example/sieve/util/PasswordEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    const-string v1, "com.withsecure.example.sieve.REQUEST"

    const/16 v2, 0x92a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v1, "com.withsecure.example.sieve.REQUEST_TYPE"

    const/16 v2, 0x1d4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/withsecure/example/sieve/activity/PWList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1d4 -> :sswitch_1
        0x28d -> :sswitch_0
    .end sparse-switch
.end method

.method public encryptionReturned([BI)V
    .locals 3
    .param p1, "result"    # [B
    .param p2, "code"    # I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/withsecure/example/sieve/activity/PWList;->finaliseEntry([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/PWList;->populateList()V

    .line 95
    const/16 v0, 0x2df

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PWList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Entry Added"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    return-void

    .line 100
    :cond_0
    const/16 v0, 0x1d4

    if-ne p2, v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PWList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Entry Updated"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    return-void

    .line 105
    :cond_1
    return-void

    .line 108
    :cond_2
    const-string v0, "m_PWList"

    const-string v1, "entry to db failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method synthetic lambda$onCreate$0$com-withsecure-example-sieve-activity-PWList(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 189
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/PWList;->addEntry()V

    .line 190
    return-void
.end method

.method synthetic lambda$onCreate$1$com-withsecure-example-sieve-activity-PWList(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 193
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/PWList;->openSettings()V

    .line 194
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 147
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 148
    packed-switch p1, :pswitch_data_0

    .line 154
    return-void

    .line 151
    :pswitch_0
    nop

    .line 158
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 159
    const-string v0, "com.withsecure.example.sieve.ENTRY"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/withsecure/example/sieve/util/PasswordEntry;

    .line 160
    .local v0, "temp":Lcom/withsecure/example/sieve/util/PasswordEntry;
    if-nez v0, :cond_0

    .line 161
    iget v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingRow:I

    invoke-direct {p0, v1}, Lcom/withsecure/example/sieve/activity/PWList;->deleteEntry(I)V

    .line 162
    return-void

    .line 165
    :cond_0
    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingEntry:Lcom/withsecure/example/sieve/util/PasswordEntry;

    .line 166
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/PWList;->MainPassword:Ljava/lang/String;

    iget-object v3, v0, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    const/16 v4, 0x2df

    invoke-virtual {v1, v2, v3, v4}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->sendForEncryption(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/PWList;->MainPassword:Ljava/lang/String;

    iget-object v3, v0, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    const/16 v4, 0x1d4

    invoke-virtual {v1, v2, v3, v4}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->sendForEncryption(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    .end local v0    # "temp":Lcom/withsecure/example/sieve/util/PasswordEntry;
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PWList;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_pwlist:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PWList;->setContentView(I)V

    .line 188
    sget v0, Lcom/withsecure/example/sieve/R$id;->addentry_button_add:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PWList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/withsecure/example/sieve/activity/PWList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/activity/PWList$$ExternalSyntheticLambda0;-><init>(Lcom/withsecure/example/sieve/activity/PWList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget v0, Lcom/withsecure/example/sieve/R$id;->button_goto_settings:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PWList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/withsecure/example/sieve/activity/PWList$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/activity/PWList$$ExternalSyntheticLambda1;-><init>(Lcom/withsecure/example/sieve/activity/PWList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PWList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.withsecure.example.sieve.KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->MainPassword:Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    invoke-direct {v0, p0}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;-><init>(Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    .line 198
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    sget v3, Lcom/withsecure/example/sieve/R$layout;->format_pwlist:I

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "service"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "username"

    aput-object v2, v5, v1

    sget v1, Lcom/withsecure/example/sieve/R$id;->format_pwlist_service:I

    sget v2, Lcom/withsecure/example/sieve/R$id;->format_pwlist_username:I

    filled-new-array {v1, v2}, [I

    move-result-object v6

    const/4 v7, 0x2

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->adapter:Landroid/widget/SimpleCursorAdapter;

    .line 199
    sget v0, Lcom/withsecure/example/sieve/R$id;->pwlist_list_pwlist:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PWList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 200
    .local v0, "pwList":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->adapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 203
    sget v1, Lcom/withsecure/example/sieve/R$id;->pwlist_textview_prompt:I

    invoke-virtual {p0, v1}, Lcom/withsecure/example/sieve/activity/PWList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->prompt:Landroid/widget/TextView;

    .line 204
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->connectionError:Landroid/app/AlertDialog$Builder;

    .line 205
    sget v2, Lcom/withsecure/example/sieve/R$string;->service_error_cantconnect:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Error"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 206
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->connectionError:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/withsecure/example/sieve/activity/PWList$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/withsecure/example/sieve/activity/PWList$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->connectionError:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 209
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "adapterView0"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "element"    # I
    .param p4, "b"    # J

    .line 214
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->adapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 215
    .local v0, "cursor0":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 216
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/PWList;->MainPassword:Ljava/lang/String;

    const-string v3, "password"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const/16 v4, 0x28d

    invoke-virtual {v1, v2, v3, v4}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->sendForDecryption(Ljava/lang/String;[BI)V

    .line 217
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p1, "adapterView0"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "element"    # I
    .param p4, "b"    # J

    .line 222
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->adapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 223
    .local v0, "cursor0":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 224
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingRow:I

    .line 225
    new-instance v1, Lcom/withsecure/example/sieve/util/PasswordEntry;

    const-string/jumbo v2, "service"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "email"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/withsecure/example/sieve/util/PasswordEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->workingEntry:Lcom/withsecure/example/sieve/util/PasswordEntry;

    .line 226
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/PWList;->MainPassword:Ljava/lang/String;

    const-string v3, "password"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const/16 v4, 0x1d4

    invoke-virtual {v1, v2, v3, v4}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->sendForDecryption(Ljava/lang/String;[BI)V

    .line 227
    const/4 v1, 0x0

    return v1
.end method

.method public onPause()V
    .locals 0

    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 233
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/PWList;->unbind()V

    .line 234
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/service/CryptoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PWList;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/withsecure/example/sieve/activity/PWList;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 240
    return-void
.end method

.method public sendFailed()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/PWList;->connectionError:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 260
    return-void
.end method
